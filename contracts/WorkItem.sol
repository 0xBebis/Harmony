pragma solidity ^0.8.0;

contract IWorkItem {

    struct WorkItem {
    string name;
    string link;
    address owner;
    uint openedOn;
    uint closedOn;
    bool bounty;
  }

  mapping(bytes32 => WorkItem) workItems;
  mapping(address => bytes32) workItemsByOwner;

}
