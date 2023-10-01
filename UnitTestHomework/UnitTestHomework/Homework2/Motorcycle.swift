//
//  Motorcycle.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 01.10.2023.
//



class Motorcycle: Vehicle {
    internal var company: String     
    internal var model: String
    internal var yearRelease: Int
    internal var numWheels: Int
    internal var speed: Int
    
    init(company: String, model: String, year: Int) {
        self.company = company
        self.model = model
        yearRelease = year
        numWheels = 2
        speed = 0
    }
    
    func testDrive() {
        speed = 75
        
    }
    
    func park() {
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
        speed
    }
    
    var description: String {
        "This motorcycle is a \(yearRelease) \(company) \(model)."
    }
    
    
}
