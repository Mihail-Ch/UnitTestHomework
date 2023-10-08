//
//  Book.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 08.10.2023.
//


class Book {
    
    private var id: String
    private var title: String
    private var author: String
    
    init(id: String, title: String, author: String) {
        self.id = id
        self.title = title
        self.author = author
    }
    
    func getId() -> String {
        id
    }
    
    func setId(id: String) -> Void {
        self.id = id
    }
    
    func getTitle() -> String {
        title
    }
    
    func setTitle(title: String) -> Void {
        self.title = title
    }
    
    func getAuthor() -> String {
        author
    }
    
    func setAuthor(author: String) -> Void {
        self.author = author
    }
}
