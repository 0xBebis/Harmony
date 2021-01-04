pragma solidity 0.8.0;

interface ITicket {

  event TicketOpened(string indexed _name, string indexed _link, bytes32 indexed _id);
  event TicketClosed(string indexed _name, string indexed _link, bytes32 indexed _id, uint openDuration);

  function openTicket(string _name, string _link, ) external returns (bool);
  function takeTicket(bytes32 _id) external returns (bool);
  function assignTicket(bytes32 _id, address _user) external returns (bool);
  function addAffectedUser(bytes32 _id, uint address) external returns (bool);
  function watchTicket(bytes32 _id) external returns (bool);
  function sendUp(bytes32 _id) external returns (bool);
  function sendDown(bytes32 _id) external returns (bool);
  function closeTicket(bytes32 _id) external returns (bool);

  function getTicketDetails(bytes32 _id) external pure returns (uint);
  function viewAffectedUsers(bytes32 _id) external pure returns (address[]);



}
