pragma solidity >=0.4.21 <0.6.0;

contract Drivers {
    address public owner;
    bytes DriverID;
    mapping(bytes => bytes) DriverInfo;

    constructor() public {
        owner = msg.sender;
    }

    function setDriverInfo(bytes memory _DriverID, bytes memory _ipfsHash) public {
        DriverInfo[_DriverID] = _ipfsHash;
    }

    function getDriverInfo(bytes memory _DriverID) public view returns (bytes memory)  {
        return DriverInfo[_DriverID];
    }
}

contract Vehicles {
    address public owner;
    bytes VehicleID;
    mapping(bytes => bytes) VehicleInfo;

    constructor() public {
        owner = msg.sender;
    }

    function setVehicleInfo(bytes memory _VehicleID, bytes memory _vehicleHash) public {
        VehicleInfo[_VehicleID] = _vehicleHash;
    }

    function getVehicleInfo(bytes memory _VehicleID) public view returns (bytes memory)  {
        return VehicleInfo[_VehicleID];
    }
}

contract Schedule {
    address public owner;
    bytes ScheduleNo;
    bytes ScheduleDetail;
    mapping(bytes => bytes) PreDeliveryList;
    mapping(bytes => bytes) PostDeliveryList;
    mapping(bytes => bytes) ScheduledRoute;
    mapping(bytes => bytes) DrivenRoute;

    constructor() public {
        owner = msg.sender;
    }

    function setScheduleDetail(bytes memory _schDetailHash) public {
        ScheduleDetail = _schDetailHash;
    }

    function getScheduleDetail() public view returns (bytes memory)  {
        return ScheduleDetail;
    }

    function setScheduledRoute(bytes memory _ScheduleNo, bytes memory _scheduledRouteHash) public {
        ScheduledRoute[_ScheduleNo] = _scheduledRouteHash;
    }

    function getScheduledRoute(bytes memory _ScheduleNo) public view returns (bytes memory)  {
        return ScheduledRoute[_ScheduleNo];
    }

    function setDrivenRoute(bytes memory _ScheduleNo, bytes memory _DrivenRouteRouteHash) public {
        DrivenRoute[_ScheduleNo] = _DrivenRouteRouteHash;
    }

    function getDrivenRoute(bytes memory _ScheduleNo) public view returns (bytes memory)  {
        return DrivenRoute[_ScheduleNo];
    }

    function setPreDeliveryList(bytes memory _ScheduleNo, bytes memory _preListHash) public {
        PreDeliveryList[_ScheduleNo] = _preListHash;
    }

    function getPreDeliveryList(bytes memory _ScheduleNo) public view returns (bytes memory)  {
        return PreDeliveryList[_ScheduleNo];
    }

    function setPostDeliveryList(bytes memory _ScheduleNo, bytes memory _postListHash) public {
        PostDeliveryList[_ScheduleNo] = _postListHash;
    }

    function getPostDeliveryList(bytes memory _ScheduleNo) public view returns (bytes memory)  {
        return PostDeliveryList[_ScheduleNo];
    }
}