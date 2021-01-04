pragma solidity 0.8.0;

contract Ticket {

  uint8 constant LEVEL_ONE_TICKET = 0;
  uint8 constant LEVEL_TWO_TICKET = 1;
  uint8 constant ACTION_ITEM = 2;
  uint8 constant WORK_ITEM = 3;

  uint totalTickets;
  uint averageTimeOpened;

  mapping(uint8 => bytes32[]) openTickets;
  mapping(uint8 => bytes32[]) closedTickets;

  struct Ticket {
    string name;
    string link;
    address owner;
    uint openedOn;
    uint closedOn;
    address[] affectedUsers;
    uint escalationStatus;
    uint priority;
  }

  mapping(bytes32 => Ticket) tickets;
  mapping(address => bytes32) ticketsByOwner;

}
