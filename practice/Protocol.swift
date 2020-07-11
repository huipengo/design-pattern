//
//  Protocol.swift
//  practice
//
//  Created by huipeng on 2020/6/23.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

protocol Test1 { }
protocol Test2 { }
protocol Test3 { }
class TestClass: Test1, Test2, Test3 { }

//protocol Drawable {
//    func draw()
//    var x: Int { get set }
//    var y: Int { get }
//    subscript(index: Int) -> Int { get set }
//}

//class Person: Drawable {
//    var x: Int = 0
//    var y: Int = 0
//    func draw() {
//        print("Person draw")
//    }
//    subscript(index: Int) -> Int {
//        set {}
//        get { index }
//    }
//}

//class Person: Drawable {
//    var x: Int {
//        set {}
//        get { 0 }
//    }
//    var y: Int { 0 }
//    func draw() {
//        print("Person draw")
//    }
//    subscript(index: Int) -> Int {
//        set {}
//        get { index }
//    }
//}

//protocol Drawable {
//    static func draw()
//    static func drift()
//}

//class Person: Drawable {
//    class func draw() {
//        print("Person draw")
//    }
//    static func drift() {
//        print("Person drift")
//    }
//}

//protocol Drawable {
//    mutating func draw()
//}
//
//class Size: Drawable {
//    var width: Int = 0
//    func draw() {
//        width = 10
//    }
//}
//
//struct Point: Drawable {
//    var x: Int = 0
//    mutating func draw() {
//        x = 10
//    }
//}

//protocol Drawable {
//    init(x: Int, y: Int)
//}
//
//class Point: Drawable {
//    required init(x: Int, y: Int) { }
//}
//
//final class Size: Drawable {
//    init(x: Int, y: Int) { }
//}
//
//
//protocol Livable {
//    init(age: Int)
//}
//
//class Person {
//    init(age: Int) { }
//}
//
//class Student: Person, Livable {
//    required override init(age: Int) {
//        super.init(age: age)
//    }
//}

//protocol Livable {
//    init()
//    init?(age: Int)
//    init!(name: String)
//}
//
//class Person: Livable {
//    required init() { }
//    // required init!() { }
//
//    required init?(age: Int) { }
//    // required init!(age: Int) { }
//    // required init(age: Int) { }
//
//    required init!(name: String) { }
//    // required init?(name: String) { }
//    // required init(name: String) { }
//}


//protocol Runnable {
//    func run()
//}
//
//protocol Livable: Runnable {
//    func breath()
//}
//
//class Person: Livable {
//    func breath() { }
//    func run() { }
//}

//protocol Runnable { }
//protocol Livable { }
//class Person {}
//
//// 接收 Person 或者其子类的实例
//func fn0(obj: Person) { }
//// 接收遵守 Livable 协议的实例
//func fn1(obj: Livable) { }
//// 接收同时遵守 Livable、Runnable 协议的实例
//func fn2(obj: Livable & Runnable) { }
//// 接收同时遵守 Livable、Runnable 协议、并且是 Person 或者其子类的实例
//func fn3(obj: Person & Livable & Runnable) { }
//
//typealias RealPerson = Person & Livable & Runnable
//// 接收同时遵守 Livable、Runnable 协议、并且是 Person 或者其子类的实例
//func fn4(obj: RealPerson) { }
//
//enum Season: CaseIterable {
//    case spring, summer, autumn, winter
//}
//
//let seasons = Season.allCases
//print(seasons.count) // 4
//for season in seasons {
//    print(season)
//}
// spring summer autumn winter

//class Person: CustomStringConvertible, CustomDebugStringConvertible {
//    var age = 18
//    var description: String { "person_\(age)" }
//
//    var debugDescription: String { "debug_person_\(age)" }
//}
//
//var person = Person()
//print(person) // person_18
//debugPrint(person) // debug_person_18


//var student: Any = 18
//student = "Rose"
//student = Student()

// 创建一个能存放任意类型的数组
//var data = Array<Any>()
//var data = [Any]()
//data.append(1)
//data.append(3.14)
//data.append("Rose")
//data.append({ 10 })


//protocol Runnable { func run() }
//class Person { }
//class Student: Person, Runnable {
//    func run() {
//        print("Student run")
//    }
//    func study() {
//        print("Student study")
//    }
//}
//
//var student: Any = 18
//(student as? Student)?.study() // 没有调用 study
//student = Student()
//(student as? Student)?.study() // Student study
//(student as! Student).study()  // Student study
//(student as? Student)?.run()   // Student run
//
//var data = [Any]()
//data.append(Int("123") as Any)
//print(data) // [Optional(123)]
//
//var double = 10 as Double
//print(double)  // 10.0


//class Person { }
//class Student: Person { }
//var perType: Person.Type = Person.self
//var stuType: Student.Type = Student.self
//print(perType, stuType)  // Person Student
//perType = Student.self
//
//var anyType: AnyObject.Type = Person.self
//anyType = Student.self
//
//public typealias AnyClass = AnyObject.Type
//var anyType2: AnyClass = Person.self
//anyType2 = Student.self
//
//var person = Person()
//var personType = type(of: person) // Person.self
//print(Person.self == type(of: person)) // true


// 元类型的应用
//class Animal {
//    required init() { }
//}
//
//class Cat: Animal { }
//class Dog: Animal { }
//class Pig: Animal { }
//
//func create(_ clses: [Animal.Type]) -> [Animal] {
//    var arr = [Animal]()
//    for cls in clses {
//        arr.append(cls.init())
//    }
//    return arr
//}
//
//print([Cat.self, Dog.self, Pig.self])

//class Person {
//    var age: Int = 0
//}
//
//class Student: Person {
//     var name: String = "Rose"
//}
//
//print(class_getInstanceSize(Student.self)) // 40
//print(class_getSuperclass(Student.self)!)  // Person
//print(class_getSuperclass(Person.self)!)   // _TtCs12_SwiftObject


//class Person {
//    var age = 18
//    static var count = 1
//    func run() {
//        print(self.age)
//        print(Self.count)
//    }
//}

//protocol Runnable {
//    func test() -> Self
//}
//
//class Person: Runnable {
//    required init() { }
//    func test() -> Self {
//        type(of: self).init()
//    }
//}
//
//class Student: Person { }
//
//var p = Person()
//print(p.test()) // Person
//
//var stu = Student()
//print(stu.test()) // Student
