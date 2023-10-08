//
//  InMemoryBookRepository.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 08.10.2023.
//


class InMemoryBookRepository: BookRepositoryProtocol {
    
    private final var books: [String:Book]
    
    init() {
        self.books = [:]
        books["1"] = Book(id: "1", title: "Book1", author: "Author1")
        books["2"] = Book(id: "2", title: "Book2", author: "Author2")
    }
    
    func findById(id: String) -> Book {
        books[id]!
    }
    
    func findAll() -> [Book] {
        var newArray: [Book] = []
        for i in books.values {
            newArray.append(i)
        }
        return newArray
    }
    
    
}

