const drivers = artifacts.require("Drivers");
const vehicles = artifacts.require("Vehicles");
const schedule = artifacts.require("Schedule");
const ipfsHash = web3.utils.fromUtf8('QmWmyoMoctfbAaiEs2G46gpeUmhqFRDW6KWo64y5r581Vz');
const driverID = web3.utils.fromUtf8('D001');
const vehicleID = web3.utils.fromUtf8('V001');
const scheduleNO = web3.utils.fromUtf8('S00001');

contract("Test Driver", () => {
    let Driver;

    beforeEach(async function () {
        Driver = await drivers.new();
    });

    it('is able to set and get driver information', async function () {
        await Driver.setDriverInfo(driverID, ipfsHash);
        let driverInfo = await Driver.getDriverInfo(driverID);
        assert.equal(driverInfo, ipfsHash);
    })
});

contract("Test Vehicle", () => {
    let Vehicle;

    beforeEach(async function () {
        Vehicle = await vehicles.new();
    });

    it('is able to set and get vehicle information', async function () {
        await Vehicle.setVehicleInfo(vehicleID, ipfsHash);
        let vehicleInfo = await Vehicle.getVehicleInfo(vehicleID);
        assert.equal(vehicleInfo, ipfsHash);
    })
});

contract("Test Schedule", () => {
    let Schedule;

    beforeEach(async function () {
        Schedule = await schedule.new();
    });

    it('is able to set and get schedule details', async function () {
        await Schedule.setScheduleDetail(ipfsHash);
        let scheduleInfo = await Schedule.getScheduleDetail();
        assert.equal(scheduleInfo, ipfsHash);
    })

    it('is able to set and get scheduled route', async function () {
        await Schedule.setScheduledRoute(scheduleNO, ipfsHash);
        let scheduledRoute = await Schedule.getScheduledRoute(scheduleNO);
        assert.equal(scheduledRoute, ipfsHash);
    })

    it('is able to set and get driven route', async function () {
        await Schedule.setDrivenRoute(scheduleNO, ipfsHash);
        let drivenRoute = await Schedule.getDrivenRoute(scheduleNO);
        assert.equal(drivenRoute, ipfsHash);
    })

    it('is able to set and get Pre-Delivery List', async function () {
        await Schedule.setPreDeliveryList(scheduleNO, ipfsHash);
        let preDeliveryList = await Schedule.getPreDeliveryList(scheduleNO);
        assert.equal(preDeliveryList, ipfsHash);
    })

    it('is able to set and get Post-Delivery List', async function () {
        await Schedule.setPostDeliveryList(scheduleNO, ipfsHash);
        let postDeliveryList = await Schedule.getPostDeliveryList(scheduleNO);
        assert.equal(postDeliveryList, ipfsHash);
    })
});

