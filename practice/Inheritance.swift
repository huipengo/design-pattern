//
//  Inheritance.swift
//  practice
//
//  Created by huipeng on 2020/6/23.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

//class Animal {
//    func speak() {
//        print("Animal speak")
//    }
//    subscript(index: Int) -> Int {
//        return index
//    }
//}
//
//var animal: Animal = Animal()
//animal.speak() // Animal speak
//print(animal[6]) // 6
//
//class Cat: Animal {
//    override func speak() {
//        super.speak()
//        print("Cat speak")
//    }
//    override subscript(index: Int) -> Int {
//        return super[index] + 2
//    }
//}
//
//var cat: Animal = Cat()
//cat.speak()
//print(cat[6])

//Animal speak
//Cat speak
//8

//class Animal {
//    class func speak() {
//        print("Animal speak")
//    }
//    class subscript(index: Int) -> Int {
//        return index
//    }
//}
//
//Animal.speak()
//print(Animal[6])

//Animal speak
//6

//class Cat: Animal {
//    override class func speak() {
//        super.speak()
//        print("Cat speak")
//    }
//    override class subscript(index: Int) -> Int {
//        return super[index] + 2
//    }
//}
//
//Cat.speak()
//print(Cat[6])

//Animal speak
//Cat speak
//8

//class Circle {
//    var radius: Int = 0
//    var diameter: Int {
//        set {
//            print("Circle setDiameter")
//            radius = newValue / 2
//        }
//        get {
//            print("Circle getDiameter")
//            return radius * 2
//        }
//    }
//}
//
//var circle: Circle = Circle()
//circle.radius = 6
//print(circle.diameter)
//circle.diameter = 20
//print(circle.radius)

//Circle getDiameter
//12
//Circle setDiameter
//10


//class SubCircle: Circle {
//    override var radius: Int {
//        set {
//            print("SubCircle setRadius")
//            super.radius = newValue > 0 ? newValue : 0
//        }
//        get {
//            print("SubCircle getRadius")
//            return super.radius
//        }
//    }
//
//    override var diameter: Int {
//        set {
//            print("SubCircle setDiameter")
//            super.diameter = newValue > 0 ? newValue : 0
//        }
//        get {
//            print("SubCircle getDiameter")
//            return super.diameter
//        }
//    }
//}

//var subCircle: Circle = SubCircle()
//subCircle.radius = 6
//print(subCircle.diameter)
//subCircle.diameter = 20
//print(subCircle.radius)

//SubCircle setRadius
//SubCircle getDiameter
//Circle getDiameter
//SubCircle getRadius
//12
//SubCircle setDiameter
//Circle setDiameter
//SubCircle setRadius
//SubCircle getRadius
//10

//class Circle {
//    static var radius: Int = 0
//    class var diameter: Int {
//        set {
//            print("Circle setDiameter")
//            radius = newValue / 2
//        }
//        get {
//            print("Circle getDiameter")
//            return radius * 2
//        }
//    }
//}
//
//class SubCircle: Circle {
//    override static var diameter: Int {
//        set {
//            print("SubCircle setDiameter")
//            super.diameter = newValue > 0 ? newValue : 0
//        }
//        get {
//            print("SubCircle getDiameter")
//            return super.diameter
//        }
//    }
//}

//class Circle {
//    var radius: Int = 2
//}

//class Circle {
//    var radius: Int = 2 {
//        willSet {
//            print("Circle willSet", newValue)
//        }
//        didSet {
//            print("Circle didSet", oldValue, radius)
//        }
//    }
//}

//class Circle {
//    var radius: Int {
//        set {
//            print("Circle setRadius", newValue)
//        }
//        get {
//            print("Circle getRadius")
//            return 20
//        }
//    }
//}
//
//class SubCircle: Circle {
//    override var radius: Int {
//        willSet {
//            print("SubCircle willSet", newValue)
//        }
//        didSet {
//            print("SubCircle didSet", oldValue, radius)
//        }
//    }
//}
