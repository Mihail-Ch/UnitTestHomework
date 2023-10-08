//
//  UnitTestHomeworkTests.swift
//  UnitTestHomeworkTests
//
//  Created by Михаил Чертов on 26.09.2023.
//

import XCTest
@testable import UnitTestHomework

final class UnitTestHomeworkTests: XCTestCase {
    
    var bookService: BookService!
    
    
    override func setUp() {
        super.setUp()
        bookService = BookService(bookRepository: InMemoryBookRepository())
        
    }
    
    func testFindByIdBook() {
        XCTAssertNil(bookService.findBookById(id: "1"), "Книга не найдена")
    }
    
    func testFindAllBooks() {
        XCTAssertNil(bookService.findAllBooks(), "Книг нет")
    }
    
   
}
