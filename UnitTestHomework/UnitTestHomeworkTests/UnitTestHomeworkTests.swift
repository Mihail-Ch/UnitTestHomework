//
//  UnitTestHomeworkTests.swift
//  UnitTestHomeworkTests
//
//  Created by Михаил Чертов on 26.09.2023.
//

import XCTest
@testable import UnitTestHomework

final class UnitTestHomeworkTests: XCTestCase {
    
    var homework3: Homework_3!
    
    
    override func setUp() {
        super.setUp()
        homework3 = Homework_3()
    }
    
    func testEvenOddNumber() {
        XCTAssert(homework3.evenOddNumber(n: 10) ,"не является четным числом")
    }
    
    func testNumberInInterval() {
        XCTAssert(homework3.numberInInterval(n: 25), "не попадает в интервал")
    }
    
   
}
