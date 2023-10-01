//
//  Car.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 01.10.2023.
//

class Car: Vehicle {
    
    internal var company: String
    internal var model: String
    internal var yearRelease: Int
    internal var numWheels: Int
    internal var speed: Int
    
    init(company: String, model: String, year: Int) {
        self.company = company
        self.model = model
        yearRelease = year
        numWheels = 4
        speed = 0
    }
    
    func testDrive() -> Void {
        speed = 60
    }
    
    func park() -> Void {
        speed = 0
    }
    
    func getCompany() -> String {
        company
    }
    
    func getModel() -> String {
        model
    }
    
    func getYearRelease() -> Int {
        yearRelease
    }
    
    func getNumWheels() -> Int {
        numWheels
    }
    
    func getSpeed() -> Int {
        return speed
    }
    
    var description: String {
        "This car is a \(yearRelease) \(company) \(model)"
    }
    
    
}
