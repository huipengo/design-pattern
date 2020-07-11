//
//  ErrorHandling.swift
//  practice
//
//  Created by huipeng on 2020/6/24.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

//enum SomeError: Error {
//    case illegalArg(String)
//    case outOfBounds(Int, Int)
//    case outOfMemory
//}
//
//func divide(_ num1: Int, _ num2: Int) throws -> Int {
//    if num2 == 0 {
//        throw SomeError.illegalArg("0 不能作为除数")
//    }
//    return num1 / num2
//}
//
//var result = try divide(20, 10)
//
//func test() {
//    print(1)
//    do {
//        print(2)
//        print(try divide(20, 0))
//        print(3)
//    } catch let SomeError.illegalArg(msg) {
//        print("参数异常:", msg)
//    } catch let SomeError.outOfBounds(size, index) {
//        print("下标越界:", "size = \(size)", "index = \(index)")
//    } catch SomeError.outOfMemory {
//        print("内存溢出")
//    } catch {
//        print("其他错误")
//    }
//    print(4)
//}
//
//test()
//1
//2
//参数异常: 0 不能作为除数
//4

//do {
//    print(try divide(20, 0))
//} catch let error {
//    switch error {
//    case let SomeError.illegalArg(msg):
//        print("参数错误:", msg)
//    default:
//        print("其他错误")
//    }
//}

//func test1() throws {
//    print(1)
//    print(try divide(20, 0))
//    print(2)
//}
//try test1()
//1
//Fatal error: Error raised at top level: practice.SomeError.illegalArg("0 不能作为除数"): file ...

//do {
//    print(try divide(20, 0))
//} catch is SomeError {
//    print("SomeError")
//}
// SomeError

//func test2() throws {
//    print(1)
//    do {
//        print(2)
//        print(try divide(20, 0))
//        print(3)
//    } catch let error as SomeError {
//        print(error)
//    }
//    print(4)
//}
//try test2()
//1
//2
//illegalArg("0 不能作为除数")
//4

//func test3() {
//    print(try? divide(20, 10))
//    print(try? divide(20, 0))
//    print(try! divide(20, 10))
//}
//test3()
//Optional(2)
//nil
//2

//var a = try? divide(20, 0)
//var b: Int?
//do {
//    b = try divide(20, 0)
//} catch {
//    b = nil
//}

//func exex(_ fn: (Int, Int) throws -> Int, _ num1: Int, _ num2: Int) rethrows {
//    print(try fn(num1, num2))
//}
//
//try exex(divide, 20, 0)
// Fatal error: Error raised at top level: practice.SomeError.illegalArg("0 不能作为除数"): file ...

//func open(_ filename: String) -> Int {
//    print("open")
//    return 0
//}
//
//func close(_ file: Int) {
//    print("close")
//}
//
//func processFile(_ filename: String) throws  {
//    let file = open(filename)
//    defer {
//        close(file)
//    }
//    // 使用 file
//    // ...
//    try divide(20, 0)
//
//    // close 将会在这里调用
//}
//
//try processFile("book.txt")

//open
//close
//Fatal error: Error raised at top level: practice.SomeError.illegalArg("0 不能作为除数"): file ...


//func divide(_ v1: Int, _ v2: Int) -> Int {
//    assert(v2 != 0, "除数不能为 0")
//    return v1 / v2
//}
//
//print(divide(20, 0))
// Assertion failed: 除数不能为 0: file

//func test(_ num: Int) -> Int {
//    if num >= 0 {
//        return 1
//    }
//    fatalError("num 不能小于 0")
//}

//class Person { required init() { } }
//class Student: Person {
//    required init() {
//        fatalError("don't call Student.init")
//    }
//    init(score: Int) { }
//}
//
//var stu1 = Student(score: 99)
//var stu2 = Student() // Fatal error: don't call Student.init


//do {
//    let dog = Dog()
//    dog.age = 8
//    dog.run()
//}
