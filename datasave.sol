pragma solidity ^0.4.8;

contract Datasave
{
    struct FileDetails
    {
        //uint timestamp;
        string owner;
        string data;
    }
    mapping (string => FileDetails) files;
    event logFileAddedStatus(bool status, string timeStamp, string owner);
    
    //this is used to store the owner of file at the block
    function set(string owner, string timeStamp, string data) public
    {
        files[timeStamp] = FileDetails(owner, data);
        logFileAddedStatus(true, timeStamp, owner);
       
    }
    //this is used to get file information
    function get(string timeStamp) public returns (string owner, string data)
    {
        return (files[timeStamp].owner, files[timeStamp].data);
    }
}
