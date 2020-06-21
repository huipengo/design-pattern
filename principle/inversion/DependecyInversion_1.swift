//
//  DependecyInversion_1.swift
//  Principle
//
//  Created by huipeng on 2020/6/18.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

protocol IReceiver {
    func getInfo() ->  String;
}

struct Email1: IReceiver {
    func getInfo() -> String {
        return "电子邮件信息：hello world"
    }
}

struct WeChat: IReceiver {
    func getInfo() -> String {
        return "电子邮件信息：hello wechat"
    }
}

struct Person1 {
    // 对接口的依赖
    func receive(receiver: IReceiver) -> Void {
        print(receiver.getInfo())
    }
}

struct DependecyInversion_1 {
    func receive() {
        let person = Person1()
        person.receive(receiver: Email1())
        person.receive(receiver: WeChat())
    }
}
