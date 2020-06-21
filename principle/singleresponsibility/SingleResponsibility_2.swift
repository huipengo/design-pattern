//
//  SingleResponsibility_2.swift
//  Principle
//
//  Created by huipeng on 2020/6/18.
//  Copyright © 2020 only.io. All rights reserved.
//  单一职责原则

import Foundation

//1. 这种修改方法没有对原来的类做大的修改，只是增加方法
//2. 这里虽然没有在类这个级别上遵守单一职责原则，但是在方法级别上，仍然是遵守单一职责

struct Vehicle2 {
    func runRoad(vehicle: String) -> Void {
        print("\(vehicle) 在公路上运行 ...")
    }

    func runAir(vehicle: String) -> Void {
        print("\(vehicle) 在天空上运行 ...")
    }
    
    func runWater(vehicle: String) -> Void {
        print("\(vehicle) 在水中运行 ...")
    }
    
    public static func vehicle() -> Void {
        let vehicle: Vehicle2 = Vehicle2()
        vehicle.runRoad(vehicle: "摩托车")
        vehicle.runRoad(vehicle: "汽车")
        vehicle.runAir(vehicle: "飞机")
        vehicle.runWater(vehicle: "轮船")
    }
}
