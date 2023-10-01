//
//  UnitTestHomeworkTests.swift
//  UnitTestHomeworkTests
//
//  Created by Михаил Чертов on 26.09.2023.
//

import XCTest
@testable import UnitTestHomework

final class UnitTestHomeworkTests: XCTestCase {
    
    var car: Car!
    var motorcycle: Motorcycle!
    
    let car1: Car = Car(company: "Volvo", model: "xc90", year: 2020)
    let motorcycle1: Motorcycle = Motorcycle(company: "Honda", model: "XXX", year: 2010)
    
    
    func testIsAnInstanceOf() {
        if car1 is Vehicle {
            XCTAssertTrue(true)
        } else {
            XCTAssertThrowsError("Не является экземпляром транспортного средства")
        }
    }
    
    func testCarHaveFourWheels() {
        let carWheels = car1.numWheels
        if carWheels == 4 {
            XCTAssertTrue(true)
        } else {
            XCTAssertThrowsError("Не хватает колес")
        }
    }
    
    func testMotorcycleHaveTwoWheels() {
        let motoWheels = motorcycle1.numWheels
        if motoWheels == 2 {
            XCTAssertTrue(true)
        } else {
            XCTAssertThrowsError("Не хватает колес")
        }
    }
    
    func testCarDevelopsSpeed() {
        car1.testDrive()
        XCTAssertEqual(car1.speed, 60, "Скорость не соответствует")
    }

    
    func testMotoDevelopsSpeed() {
        motorcycle1.testDrive()
        XCTAssertEqual(motorcycle1.speed, 75, "Скорость не соответствует")
    }
    
    func testCarStopOnParking() {
        car1.testDrive()
        car1.park()
        XCTAssertEqual(car1.speed, 0, "Машина не остановилась")
    }
    
    func testMotoStopOnParking() {
        motorcycle1.testDrive()
        motorcycle1.park()
        XCTAssertEqual(motorcycle1.speed, 0, "Мотоцикл не остановился")
    }

}
