//
//  BookService.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 08.10.2023.
//


class BookService {
    
    private var bookRepository: BookRepositoryProtocol
    
    init(bookRepository: BookRepositoryProtocol) {
        self.bookRepository = bookRepository
    }
    
    func findBookById(id: String) -> Book {
        bookRepository.findById(id: id)
    }
    
    func findAllBooks() -> [Book] {
        bookRepository.findAll()
    }
}
