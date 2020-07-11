//
//  main.swift
//  practice
//
//  Created by huipeng on 2020/6/23.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

//var number = 1
//switch number {
//case 1:
//    print("number is 1")
//    print("number is 1")
//    print("number is 1")
//default:
//    break
//}
//
//let point = (1, -1)
//switch point {
//case let (x, y) where x == y:
//    print("on the line x == y")
//case (let x, let y) where x == -y:
//    print("on the line x == -y")
//case (let x, let y):
//    print("\(x), \(y) is just some arbitrary point")
//}
//
//var numbers = [10, 20, -20, -10, 30, -30]
//var sum = 0
//for num in numbers {
//    sum += num
//}
//print(sum)

//outer: for i in 1...4 {
//    for k in 1...4 {
//        if k == 3 {
//            continue outer
//        }
//        if i == 3 {
//            break outer
//        }
//        print("i == \(i), k == \(k)")
//    }
//}

//indirect enum ArithExpr {
//    case number(Int)
//    case sum(ArithExpr, ArithExpr)
//    case difference(ArithExpr, ArithExpr)
//}
//
//let five = ArithExpr.number(5)
//let four = ArithExpr.number(4)
//let two = ArithExpr.number(2)
//let sum = ArithExpr.sum(five, four)
//let difference = ArithExpr.difference(sum, two)

//print(five, four, two, sum, difference)

//let num1: Int! = nil
// Thread 1: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value
// let num2: Int = num1

//struct Point {
//    var x: Int?
//    var y: Int?
//}
//
//var p1 = Point(x: 10, y: 10)
//var p2 = Point(y: 10)
//var p3 = Point(x: 10)
//var p4 = Point()

//func sum(_ v1: Int, _ v2: Int) -> Int { v1 + v2 }

//let fn = {
//    (v1: Int, v2: Int) -> Int in
//    return v1 + v2
//}
//
//print(fn(10, 20))
//
//let fn1 = {
//    (v1: Int, v2: Int, v3: Int) -> Int in
//    return v1 - v2
//}(10, 20, 30)
//
//func exec(v1: Int, v2: Int, fn: (Int, Int) -> Int) {
//    print(fn(v1, v2))
//}
//
//exec(v1: 10, v2: 20) { (v1, v2) -> Int in
//    return v1 + v2
//}
//
//exec(v1: 10, v2: 20, fn: {
//    v1, v2 in return v1 + v2
//})
//
//exec(v1: 10, v2: 20, fn: {
//    v1, v2 in v1 + v2
//})
//
//exec(v1: 10, v2: 20, fn: { $0 + $1 })
//exec(v1: 10, v2: 20, fn: + )
//
//func exec(fn: (Int, Int) -> Int) {
//    print(fn(1, 2))
//}
//
//exec(fn: {$0 + $1})
//exec() {$0 - $1}
//exec { $0 + $1 }
