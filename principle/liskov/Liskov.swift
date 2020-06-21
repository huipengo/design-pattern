//
//  Liskov.swift
//  Principle
//
//  Created by huipeng on 2020/6/19.
//  Copyright © 2020 only.io. All rights reserved.
//  里氏替换原则

import Foundation

// A 类
class A {
    // 返回两个数的差
    func func1(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
}

// B类继承了A
// 增加了一个新功能：完成两个数相加,然后和3求和
class B: A {
    // 这里可能无意识重写了 A 类方法
    override func func1(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func func2(num1: Int, num2: Int) -> Int {
        return func1(num1: num1, num2: num2) + 3
    }
}

//解决方法
/*
 1、我们发现原来运行正常的相减功能发生了错误。原因就是类B无意中重写了父类的方法，造成原有功能出现错
 误。在实际编程中，我们常常会通过重写父类的方法完成新的功能，这样写起来虽然简单，但整个继承体系的复用性会比较差。
 特别是运行多态比较频繁的时候
 2、通用的做法是:原来的父类和子类都继承一个更通俗的基类，原有的继承关系去掉，采用依赖，聚合，组合等 关系代替.
 3、见 Liskov1.swift
 */
