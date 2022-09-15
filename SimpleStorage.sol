// SPDX-License-Identifier:MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 public favariteNumber = 5;

    //bool favariteBool = false;

    //string favariteString = "string";

    //int256 favariteInt = 5;

    function store(uint256 _favariteNumber) public {
        favariteNumber = _favariteNumber;
    }

    function retrive() public view returns (uint256) {
        return favariteNumber;
    }

    //view .pure

    //function retrive(uint256 favariteNumber) public view returns(uint256) {

    //return favariteNumber;

    //return favariteNumber;

    //}

    //function retrive(uint256 Number) public {

    //Number = _Number;

    //}

    //function retrive() public view returns(uint256) {

    //return Number;

    //}

    //structs

    struct People {
        uint256 favariteNumber;
        string name;
    }

    //People public persion = People({favariteNumber:2,name:"Ridhdhi"});

    People[] public people;

    mapping(string => uint256) public nameToFavariteNumber;

    function addperson(string memory _name, uint256 _favariteNumber) public {
        people.push(People(_favariteNumber, _name));

        nameToFavariteNumber[_name] = _favariteNumber;
    }
}
