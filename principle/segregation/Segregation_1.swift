//
//  Segregation_1.swift
//  Principle
//
//  Created by huipeng on 2020/6/18.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

protocol SegregationProtocol_1 {
    func operation1() -> Void;
}

protocol SegregationProtocol_2{
    func operation2() -> Void;
    func operation3() -> Void;
}

protocol SegregationProtocol_3 {
    func operation4() -> Void;
    func operation5() -> Void;
}

struct Segregation1B: SegregationProtocol_1, SegregationProtocol_2 {
    func operation1() {
        print("B 实现了 operation1")
    }
    
    func operation2() {
        print("B 实现了 operation2")
    }
    
    func operation3() {
        print("B 实现了 operation3")
    }
}

struct Segregation1D: SegregationProtocol_1, SegregationProtocol_3 {
    func operation1() {
        print("D 实现了 operation1")
    }
    
    func operation4() {
        print("D 实现了 operation4")
    }
    
    func operation5() {
        print("D 实现了 operation5")
    }
}

/**
 类A通过接口 SegregationProtocol 依赖类B，类C通过接口 SegregationProtocol 依赖类D，如果接口 SegregationProtocol 对于类A和类C
 来说不是最小接口，那么类 B 和类 D 必须去实现他们不需要的方法
 2) 将接口 SegregationProtocol 拆分为独立的几个接口，类A和类C分别与他们需要的接口建立依赖关系。也就是采用接口 隔离原则
 3) 接口 SegregationProtocol 中出现的方法，根据实际情况拆分为三个接口
 */

// A 类通过接口Interface1 依赖(使用) B类，但是只会用到1,2,3方法
struct Segregation1A {
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
struct Segregation1C {
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
