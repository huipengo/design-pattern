//
//  Liskov1.swift
//  Principle
//
//  Created by huipeng on 2020/6/19.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

// 创建一个更加基础的基类
class Base {
    // 把更加基础的方法和成员变量写到 Base 类
}

class A1: Base {
    // 返回两个数的差
    func func1(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
}

class B1: Base {
    //如果B需要使用A类的方法,使用组合关系
    let classA = A()
    
    func func1(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func func2(num1: Int, num2: Int) -> Int {
        return func1(num1: num1, num2: num2) + 3
    }
    
    // 我们仍然想使用A的方法
    func func3(num1: Int, num2: Int) -> Int {
        return classA.func1(num1: num1, num2: num2)
    }
}
