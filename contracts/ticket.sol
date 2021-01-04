pragma solidity 0.8.0;

abstract contract ITicket {

  event TicketOpened(string indexed _name, string indexed link, bytes32 indexed _id);
  event

  uint8 LEVEL_ONE_TICKET = 0;
  uint8 LEVEL_TWO_TICKET = 1;
  uint8 ACTION_ITEM = 2;
  uint8 WORK_ITEM = 3;

  uint averageTimeOpened;

  mapping(uint8 => bytes32) openTickets;
  mapping(uint8 => bytes32) closedTickets;

  struct Ticket {
    string name;
    string link;
    address owner;
    uint openedOn;
    uint closedOn;
    address[] affectedUsers;
    uint escalationStatus;
    uint priorityScore;
  }

  mapping(bytes32 => Ticket) tickets;
  mapping(address => bytes32) ticketsByOwner;

  struct WorkItem {
    uint openedOn;
    uint closedOn;
    uint progress;
    bool bounty;
  }

  mapping(bytes32 => WorkItem) workItems;
  mapping address => bytes32) workItemsByOwner;

  function openTicket(string _name, string _link, ) external returns (bool);
  function takeTicket(bytes32 _id) external returns (bool);
  function addAffectedUser(bytes32 _id, uint address) external returns (bool);
  function watchTicket(bytes32 _id) external returns (bool);
  function sendUp(bytes32 _id) external returns (bool);
  function sendDown(bytes32 _id) external returns (bool);
  function closeTicket(bytes32 _id) external returns (bool);
  function createWorkItem(bytes32 _id) external returns (bool);

  function getTicketDetails(bytes32 _id) external pure returns (uint);
  function viewAffectedUsers(bytes32 _id) external pure returns (address[]);



}
