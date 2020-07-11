//
//  Singleton.swift
//  singleton
//
//  Created by huipeng on 2020/6/21.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

final class Singleton_0 {
    /// 单例
    public static let shared = Singleton_0()
    private init() {}
}

final class Singleton_1 {
    public static let shared = {
        // do something
        return Singleton_1()
    }()
    private init() {}
}

// 在方法类定义静态常量
final class Singleton_2 {
    public static var shared: Singleton_2 {
        struct Static {
            static let instance: Singleton_2 = Singleton_2()
        }
        return Static.instance
    }
    private init() {}
}
