//
//  main.swift
//  CalcArrayPoints
//
//  Created by Personal on 4/5/17.
//  Copyright © 2017 Ena Markovic. All rights reserved.
//

import Foundation

// Build a Calculator
func add(left: Int, right: Int) -> Int {
    return left + right;
}

func subtract(left: Int, right: Int) -> Int {
    return left - right;
}

func multiply(left: Int, right: Int) -> Int {
    return left * right;
}

func divide(left: Int, right: Int) -> Int {
    return left / right;
}

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

// Array Fun
func add(array: [Int]) -> Int {
    var sum = Int(0)
    for num in array {
        sum += num
    }
    return sum
}

func multiply(array: [Int]) -> Int {
    var product = Int(1)
    for num in array {
        product *= num
    }
    return product
}

func count(array: [Int]) -> Int {
    return Int(array.count)
}

func average(array: [Int]) -> Int {
    let sum = add(array: array)
    return sum / count(array: array)
}

func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

// Tuple Points 
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

// Dictionary Points
func checkDictionary(point1: [String: Any]?, point2: [String: Any]?) -> Bool {
    if point1 == nil || point2 == nil {
        return false
    }
    
    let point1x = point1!["x"]
    let point1y = point1!["y"]
    let point2x = point1!["x"]
    let point2y = point1!["y"]
    if point1x == nil
        || point1y == nil
        || point2x == nil
        || point2y == nil {
        return false
    }
    
    return true
}


func add(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    if checkDictionary(point1: p1, point2: p2) {
        return ["x": (p1!["x"]! + p2!["x"]!), "y": (p1!["y"]! + p2!["y"]!)]
    }
    return ["":0]
}

func add(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    if checkDictionary(point1: p1, point2: p2) {
        return ["x": (p1!["x"]! + p2!["x"]!), "y": (p1!["y"]! + p2!["y"]!)]
    }
    return ["":0]
}

func subtract(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    if checkDictionary(point1: p1, point2: p2) {
        return ["x": (p1!["x"]! - p2!["x"]!), "y": (p1!["y"]! - p2!["y"]!)]
    }
    return ["":0]
}

func subtract(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    if checkDictionary(point1: p1, point2: p2) {
        return ["x": (p1!["x"]! - p2!["x"]!), "y": (p1!["y"]! - p2!["y"]!)]
    }
    return ["":0]
}
