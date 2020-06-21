//
//  SingleResponsibility_1.swift
//  Principle
//
//  Created by huipeng on 2020/6/18.
//  Copyright © 2020 only.io. All rights reserved.
//  单一职责原则

import Foundation


//1. 遵守单一职责原则
//2. 但是这样做的改动很大，即将类分解，同时修改客户端
//3. 改进：直接修改 Vehicle 类，改动的代码会比较少=>方案2

struct RoadVehicle {
    func run(vehicle: String) -> Void {
        print("\(vehicle) 公路运行")
    }
}

struct AirVehicle {
    func run(vehicle: String) -> Void {
        print("\(vehicle) 公路运行")
    }
}

struct WaterVehicle {
    func run(vehicle: String) -> Void {
        print("\(vehicle) 公路运行")
    }
}
