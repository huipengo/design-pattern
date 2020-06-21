//
//  DependecyPass.swift
//  Principle
//
//  Created by huipeng on 2020/6/18.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

// 方式一：通过接口传递实现依赖
//protocol IOpenAndClose {
//    func open(tv: ITV) -> Void
//}

protocol ITV {
    func play()
}

struct ChangHong: ITV {
    func play() {
        print("长虹电视机，打开")
    }
}

//struct OpenAndClose: IOpenAndClose {
//    func open(tv: ITV) {
//        tv.play()
//    }
//}

// 方式二：通过构造方法依赖传递
//protocol IOpenAndClose {
//    func open() -> Void
//}
//
//struct OpenAndClose: IOpenAndClose {
//    func open() {
//        self.tv.play()
//    }
//
//    let tv: ITV
//    init(tv: ITV) {
//        self.tv = tv
//    }
//}

// 方式三：通过 setter 方法传递
protocol IOpenAndClose {
    func open() -> Void
    mutating func setTv(tv: ITV)
}

struct OpenAndClose: IOpenAndClose {
    var tv: ITV
    mutating func setTv(tv: ITV) {
        self.tv = tv
    }
    
    func open() {
        self.tv.play()
    }
}

struct DependecyPass {
    // 方式一：通过接口传递实现依赖
//    func test1() {
//        let changhong = ChangHong()
//        let openAndClose = OpenAndClose()
//        openAndClose.open(tv: changhong)
//    }
    
    // 方式二：通过构造方法依赖传递
//    func test2() {
//        let changhong = ChangHong()
//        let openAndClose = OpenAndClose(tv: changhong)
//        openAndClose.open()
//    }
    
    // 方式三：通过 setter 方法传递
    func test3() {
        let changhong = ChangHong()
        let openAndClose = OpenAndClose(tv: changhong)
        openAndClose.open()
    }
}
