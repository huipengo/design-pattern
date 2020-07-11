//
//  Initialization.swift
//  practice
//
//  Created by huipeng on 2020/6/23.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

//class Person {
//    required init() { }
//    init(age: Int) { }
//}
//
//class Student: Person {
//    required init() {
//        super.init()
//    }
//}

//class Person {
//    var age: Int {
//        willSet {
//            print("willSet", newValue)
//        }
//        didSet {
//            print("didSet", oldValue, age)
//        }
//    }
//
//    init() {
//        self.age = 0
//    }
//}
//
//class Student: Person {
//    override init() {
//        super.init()
//        self.age = 1
//    }
//}
//
//var student = Student()

//willSet 1
//didSet 0 1

//class Person {
//    var name: String
//    init?(name: String) {
//        if name.isEmpty {
//            return nil
//        }
//        self.name = name
//    }
//    deinit {
//        print("Person 对象销毁了")
//    }
//}
//
//var num = Int("123")
//// @inlinable public init?(_ description: String)
//
//enum Answer: Int {
//    case wrong, right
//}
//var answer = Answer(rawValue: 1)
