// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title InternshipLedger
 * @dev A decentralized internship validation platform where organizations can verify and record internship completions.
 */
contract InternshipLedger {
    address public admin;

    struct Internship {
        string internName;
        string organization;
        string internshipTitle;
        uint256 startDate;
        uint256 endDate;
        bool verified;
    }

    mapping(address => Internship[]) public internRecords;

    event InternshipAdded(address indexed intern, string organization, string title);
    event InternshipVerified(address indexed intern, string organization, string title);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    /**
     * @dev Add an internship record for a student.
     */
    function addInternship(
        string memory _internName,
        string memory _organization,
        string memory _title,
        uint256 _startDate,
        uint256 _endDate
    ) public {
        internRecords[msg.sender].push(
            Internship(_internName, _organization, _title, _startDate, _endDate, false)
        );

        emit InternshipAdded(msg.sender, _organization, _title);
    }

    /**
     * @dev Verify an internship record by the admin.
     */
    function verifyInternship(address _intern, uint256 _index) public onlyAdmin {
        require(_index < internRecords[_intern].length, "Invalid internship index");
        internRecords[_intern][_index].verified = true;

        emit InternshipVerified(_intern, internRecords[_intern][_index].organization, internRecords[_intern][_index].internshipTitle);
    }

    /**
     * @dev Get internship details of a particular intern.
     */
    function getInternships(address _intern) public view returns (Internship[] memory) {
        return internRecords[_intern];
    }
}
