pragma solidity ^0.8.0;

contract IWorkItem {

  event newWorkItem(string _name, string _link, bytes32 _id);
  event finishedWorkItem(string _name, string _link, bytes32 _id, uint timeOpen);
  event fundingAdded(string _name, string _link, bytes32 _id, uint _bounty);

  function openWorkItem(string _name, string _link, uint _funding) external returns (bool);
  function takeWorkItem(bytes32 _id) external returns (bool);
  function assignWorkItem(bytes32 _id, address _user) external returns (bool);
  function closeWorkItem(bytes32 _id) external returns (bool);
  function addFunding(bytes32 _id, uint _amount) external returns (bool);
  function removeFunding(bytes32 _id, uint _amount) external returns (bool);

}
