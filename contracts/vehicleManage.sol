pragma solidity >=0.4.21 <0.6.0;

contract Drivers {
    address public owner;
    string DriverID;
    mapping(string => string) DriverInfo;

    constructor() public {
        owner = msg.sender;
    }

    function setDriverInfo(string memory _DriverID, string memory _ipfsHash) public {
        DriverInfo[_DriverID] = _ipfsHash;
    }

    function getDriverInfo(string memory _DriverID) public view returns (string memory)  {
        return DriverInfo[_DriverID];
    }
}

contract Vehicles {
    address public owner;
    string VehicleID;
    mapping(string => string) VehicleInfo;

    constructor() public {
        owner = msg.sender;
    }

    function setVehicleInfo(string memory _VehicleID, string memory _vehicleHash) public {
        VehicleInfo[_VehicleID] = _vehicleHash;
    }

    function getVehicleInfo(string memory _VehicleID) public view returns (string memory)  {
        return VehicleInfo[_VehicleID];
    }
}

contract Schedule {
    address public owner;
    string ScheduleNo;
    string ScheduleDetail;
    mapping(string => string) PreDeliveryList;
    mapping(string => string) PostDeliveryList;
    mapping(string => string) ScheduledRoute;
    mapping(string => string) DrivenRoute;

    constructor() public {
        owner = msg.sender;
    }

    function setScheduleDetail(string memory _schDetailHash) public {
        ScheduleDetail = _schDetailHash;
    }

    function getScheduleDetail() public view returns (string memory)  {
        return ScheduleDetail;
    }

    function setScheduledRoute(string memory _ScheduleNo, string memory _scheduledRouteHash) public {
        ScheduledRoute[_ScheduleNo] = _scheduledRouteHash;
    }

    function getScheduledRoute(string memory _ScheduleNo) public view returns (string memory)  {
        return ScheduledRoute[_ScheduleNo];
    }

    function setDrivenRoute(string memory _ScheduleNo, string memory _DrivenRouteRouteHash) public {
        DrivenRoute[_ScheduleNo] = _DrivenRouteRouteHash;
    }

    function getDrivenRoute(string memory _ScheduleNo) public view returns (string memory)  {
        return DrivenRoute[_ScheduleNo];
    }

    function setPreDeliveryList(string memory _ScheduleNo, string memory _preListHash) public {
        PreDeliveryList[_ScheduleNo] = _preListHash;
    }

    function getPreDeliveryList(string memory _ScheduleNo) public view returns (string memory)  {
        return PreDeliveryList[_ScheduleNo];
    }

    function setPostDeliveryList(string memory _ScheduleNo, string memory _postListHash) public {
        PostDeliveryList[_ScheduleNo] = _postListHash;
    }

    function getPostDeliveryList(string memory _ScheduleNo) public view returns (string memory)  {
        return PostDeliveryList[_ScheduleNo];
    }
}