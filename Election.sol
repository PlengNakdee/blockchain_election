pragma solidity ^0.4.24;

contract Election {
    // make new type named Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // hash table candidate, store candidates
    mapping(uint => Candidate) public candidates;

    // number of candidates
    uint public candidatesCount;

    // store voters
    mapping(address => bool) public voters;

    // array of voters
    address[] public addresses;

    // store accounts that have voted
    //mapping(address => bool) public votes;

    function addCandidate (string name) private {
        // add number of candidates to candidatesCount
        candidatesCount++;
        //store in candidates hash table, table[index] = struct(id, name, voteCount)
        candidates[candidatesCount] =  Candidate(candidatesCount, name, 0);
    }

    // contructor, excecute when contract creates/migrates
    constructor() public {
        addCandidate('Daenerys Targaryen');
        addCandidate('Tyrion Lannister');
        addCandidate('Jon Snow');
        addCandidate('Sansa Stark');
    }

    function vote (uint candidateId) public {
        // require address (msg.sender) that not already in voters hash table
        require(!voters[msg.sender]);

        // require valid candidate number, not 0 and less than or equal candidatesCount
        require(candidateId > 0 && candidateId <= candidatesCount);

        // record the vote
        voters[msg.sender] = true;

        // update vote score
        candidates[candidateId].voteCount++;

        // add voters to array
        addresses.push(msg.sender);
    }

    function getVoters() public view returns (address[]) {
        return addresses;
    }

}