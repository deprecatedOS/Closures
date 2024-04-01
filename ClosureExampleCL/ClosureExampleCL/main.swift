//
//  main.swift
//  ClosureExampleCL
//
//  Created by Sezgin Çiftci on 31.03.2024.
//




import Foundation

//MARK: - Closures
func compare(_ lhs: Int, _ rhs: Int) -> Bool {
    return lhs > rhs
}

print(compare(32, 54))

///
var compareClosure: (Int, Int) -> Bool = {
    return $0 > $1
}

print(compareClosure(12, 15))

///
func filterNumbers(with closure: (Int) -> Bool, intArray: [Int]) -> [Int] {
    var filteredArray = [Int]()
    
    for num in intArray {
        if closure(num) {
            filteredArray.append(num)
        }
    }
    
    return filteredArray
}

var numbers: [Int] = [1, 3, 62, 512, 34, 21, 90, 235, 123, 567, 12]

let filteredNumbers = filterNumbers(with: { number in
    return number % 2 == 0
}, intArray: numbers)

print(filteredNumbers)


