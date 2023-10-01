//
//  MyTestClass.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 26.09.2023.
//

import Foundation


enum ExceptionError: Error {
    case exceptionDescription(description: String)
}

 public class MyClassTask {
    
    func sumList(list1: [Int], list2: [Int]) throws -> [Int] {
        if list1.count != list2.count {
            throw ExceptionError.exceptionDescription(description: "Списки должны быть одинаковой длины")
        }
        var result: [Int] = []
        
        for i in 0...list1.count - 1 {
            result.append(list1[i] + list2[i])
        }
        return result
    }
    
    func findMax(numbers: [Int]) throws -> Int {
        if numbers.isEmpty {
            throw ExceptionError.exceptionDescription(description: "Список не должен быть пустым")
        }
        var max: Int = numbers[0]
        for i in numbers {
            if i > max {
                max = i
            }
        }
        return max
    }
    
    func filterStrings(words: [String], minLength: Int) throws -> [String] {
        if minLength <= 0 {
            throw ExceptionError.exceptionDescription(description: "Минимальная длина не может быть отрицательной и равняться нулю")
        }
        var filterString: [String] = []
        for i in words {
            if i.count == minLength {
                filterString.append(i)
            }
        }
        return filterString
    }
}
