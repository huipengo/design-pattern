//
//  DependencyInversion.swift
//  Principle
//
//  Created by huipeng on 2020/6/18.
//  Copyright © 2020 only.io. All rights reserved.
//  依赖倒置原则

import Foundation

struct Email {
    func getInfo() -> String {
        return "电子邮件信息"
    }
}

//完成Person接收消息的功能
//方式1分析
//1. 简单，比较容易想到
//2. 如果我们获取的对象是 微信，短信等等，则新增类，同时Perons也要增加相应的接收方法
//3. 解决思路：引入一个抽象的接口IReceiver, 表示接收者, 这样Person类与接口IReceiver发生依赖
//   因为Email, WeiXin 等等属于接收的范围，他们各自实现IReceiver 接口就ok, 这样我们就符号依赖倒转原则
struct Person {
    func receive(email: Email) -> Void {
        print(email.getInfo())
    }
}

class DependecyInversion {
    func receive() {
        let person = Person()
        person.receive(email: Email())
    }
}
