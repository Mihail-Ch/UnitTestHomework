//
//  Vehicle.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 01.10.2023.
//


protocol Vehicle: CustomStringConvertible {
    var company: String {get}
    var model: String {get}
    var yearRelease: Int {get}
    var numWheels: Int {get}
    var speed: Int {get set}
    
    func testDrive() -> Void
    func park() -> Void
}
