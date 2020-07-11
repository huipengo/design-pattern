//
//  Property.swift
//  practice
//
//  Created by huipeng on 2020/6/23.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

//struct Circle {
//    // 存储属性
//    var radius: Double
//    // 计算属性
//    var diameter: Double {
//        set {
//            radius = newValue / 2
//        }
//        get {
//            radius * 2
//        }
//    }
//}

//struct Circle {
//    // 存储属性
//    var radius: Double
//    // 计算属性
//    var diameter: Double { radius * 2 }
//}
//
//var circle = Circle(radius: 8)
//print(circle.radius, circle.diameter)
//8.0, 16.0


// 枚举原始值 rawValue 的本质是：只读计算属性
//enum Directon: String {
//    case north = "north", south = "south", east = "east", west = "west"
//    var rawValue: String {
//        switch self {
//        case .north:
//            return "north"
//        case .south:
//            return "south"
//        case .east:
//            return "east"
//        case .west:
//            return "west"
//        }
//    }
//}
//
//class Car {
//    init() {
//        print("Car init!")
//    }
//    func run() -> Void {
//        print("Car is running!")
//    }
//}

// lazy 属性必须是 var, 不能是 let
// let 必须在实例的初始化方法完成之前就拥有值
//class Person {
//    lazy var car = Car()
//    init() {
//        print("Person init!")
//    }
//    func goOut() -> Void {
//        car.run()
//    }
//}
//
//class PhotoView {
//    lazy var image: String = {
//       let url = ""
//        return url
//    }()
//}

//struct Point {
//    var x = 0
//    var y = 0
//    lazy var z = 0
//}
//let p = Point()
//print(p.z)
// error：Cannot use mutating getter on immutable value: 'p' is a 'let' constant

//struct Circle {
//    // 存储属性
//    var radius: Double {
//        willSet {
//            print("willSet", newValue)
//        }
//        didSet {
//            print("didSet", oldValue, radius)
//        }
//    }
//    init() {
//        self.radius = 1.0
//        print("Circle init!")
//    }
//}

//var num: Int {
//    get { return 10 }
//    set { print("setNum", newValue) }
//}
//
//func getAge() -> Int {
//    var age = 10 {
//        willSet {
//            print("willSet", newValue)
//        }
//        didSet {
//            print("didSet", oldValue)
//        }
//    }
//    age = 11
//    return age
//}
//
//getAge()

//struct Shape {
//    var width: Int
//    var side: Int {
//        willSet { print("willSetSide", newValue) }
//        didSet { print("didSetSide", oldValue, side) }
//    }
//    var girth: Int {
//        set {
//            width = newValue / side
//            print("setGirth", newValue)
//        }
//        get {
//            print("getGirth")
//            return width * side
//        }
//    }
//    func show() {
//        print("width = \(width), side = \(side), girth = \(girth)")
//    }
//}
//
//func test(_ num: inout Int) {
//    num = 20
//}
//
//var s = Shape(width: 10, side: 4)
//test(&s.width)
//s.show()
//print("------------")
//test(&s.side)
//s.show()
//print("------------")
//test(&s.girth)
//s.show()

/**
getGirth
width = 20, side = 4, girth = 80
------------
willSetSide 20
didSetSide 4 20
getGirth
width = 20, side = 20, girth = 400
------------
getGirth
setGirth 20
getGirth
width = 1, side = 20, girth = 20
*/
