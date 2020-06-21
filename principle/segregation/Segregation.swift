//
//  Segregation.swift
//  Principle
//
//  Created by huipeng on 2020/6/18.
//  Copyright © 2020 only.io. All rights reserved.
//  接口隔离原则

import Foundation

protocol SegregationProtocol {
    func operation1() -> Void;
    func operation2() -> Void;
    func operation3() -> Void;
    func operation4() -> Void;
    func operation5() -> Void;
}

struct SegregationB: SegregationProtocol {
    func operation1() {
        print("B 实现了 operation1")
    }
    
    func operation2() {
        print("B 实现了 operation2")
    }
    
    func operation3() {
        print("B 实现了 operation3")
    }
    
    func operation4() {
        print("B 实现了 operation4")
    }
    
    func operation5() {
        print("B 实现了 operation5")
    }
}

struct SegregationD: SegregationProtocol {
    func operation1() {
        print("D 实现了 operation1")
    }
    
    func operation2() {
        print("D 实现了 operation2")
    }
    
    func operation3() {
        print("D 实现了 operation3")
    }
    
    func operation4() {
        print("D 实现了 operation4")
    }
    
    func operation5() {
        print("D 实现了 operation5")
    }
}

// A 类通过接口Interface1 依赖(使用) B类，但是只会用到1,2,3方法
struct SegregationA {
    func depend1(p: SegregationProtocol) {
        p.operation1()
    }
    
    func operation2(p: SegregationProtocol) {
        p.operation2()
    }
    
    func operation3(p: SegregationProtocol) {
        p.operation3()
    }
}

// C 类通过接口Interface1 依赖(使用) D类，但是只会用到1,4,5方法
struct SegregationC {
    func depend1(p: SegregationProtocol) {
        p.operation1()
    }
    
    func operation4(p: SegregationProtocol) {
        p.operation4()
    }
    
    func operation3(p: SegregationProtocol) {
        p.operation5()
    }
}
