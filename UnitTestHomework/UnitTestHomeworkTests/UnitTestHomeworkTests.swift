//
//  UnitTestHomeworkTests.swift
//  UnitTestHomeworkTests
//
//  Created by Михаил Чертов on 26.09.2023.
//

import XCTest
@testable import UnitTestHomework

final class UnitTestHomeworkTests: XCTestCase {
    
    var myClassTest: MyClassTask!
    
    func sumListShouldBeCorrect() throws {
        let list1 = [1,2,3]
        let list2 = [1,2,3]
        let result = [2,4,6]
        let resultTest = try myClassTest.sumList(list1: list1, list2: list2)
        XCTAssertEqual(result, resultTest, "Сумма списков не верна!")
    }
    
    func findMaxNumber() throws {
        let list = [1,3,5,7,2]
        let result = 7
        let resultTest = try myClassTest.findMax(numbers: list)
        XCTAssertEqual(result, resultTest, "Не верный максимальный элемент!")
    }
    
    func filterStringArrayTest() throws {
        let list = ["Hello", "World", "Swift", "Geek"]
        let result = ["Hello", "World", "Swift"]
        let resultTest = try myClassTest.filterStrings(words: list, minLength: 5)
        XCTAssertEqual(result, resultTest, "Не правильно отфильтрован массив строк!")
    }

    override func setUpWithError() throws {
        myClassTest = MyClassTask()
    }

    override func tearDownWithError() throws {
        myClassTest = nil
        try super.tearDownWithError()
    }

    func testExample() throws {
        try sumListShouldBeCorrect()
        try findMaxNumber()
        try filterStringArrayTest()
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
