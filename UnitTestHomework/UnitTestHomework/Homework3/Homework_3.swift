//
//  Homework_3.swift
//  UnitTestHomework
//
//  Created by Михаил Чертов on 04.10.2023.
//

class Homework_3 {
    
    func evenOddNumber(n: Int) -> Bool {
        if n % 2 == 0 {
            return true
        } else {
            return false
        }
    }
    
    func numberInInterval(n: Int) -> Bool {
        var result: Bool = true
        var array = [Int]()
        for i in 25...100 {
            array.append(i)
        }
        if array.contains(n) {
            return result
        } else {
            result = false
        }
        return result
    }
    
}
