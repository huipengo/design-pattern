//
//  SingleResponsibility.swift
//  Principle
//
//  Created by huipeng on 2020/6/18.
//  Copyright © 2020 only.io. All rights reserved.
//  单一职责原则

import Foundation

// 1. 在该类的run方法中，违反了单一职责原则
// 2. 解决的方案非常的简单，根据交通工具运行方法不同，分解成不同类即可

struct Vehicle {
    func run(vehicle: String) -> Void {
        print("\(vehicle) 在公路上运行 ...")
    }
    
    public static func vehicle() -> Void {
        let vehicle: Vehicle = Vehicle()
        vehicle.run(vehicle: "摩托车")
        vehicle.run(vehicle: "汽车")
        vehicle.run(vehicle: "飞机")
    }
}
