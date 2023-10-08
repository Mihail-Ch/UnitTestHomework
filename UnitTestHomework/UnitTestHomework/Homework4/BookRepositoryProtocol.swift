//
//  BookRepositoryProtocol.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 08.10.2023.
//


protocol BookRepositoryProtocol {
    
    func findById(id: String) -> Book
    func findAll() -> [Book]
    
}

