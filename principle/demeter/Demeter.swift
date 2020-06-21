//
//  Demeter.swift
//  Principle
//
//  Created by huipeng on 2020/6/20.
//  Copyright © 2020 only.io. All rights reserved.
//  迪米特法则

import Foundation

// 学校总部员工类
class Employee {
    var userId: String = ""
}

// 学院的员工类
class CollegeEmployee {
    var userId: String = ""
}

// 管理学院员工的管理类
class CollegeManager {
    public func getAllEmployee() -> Array<CollegeEmployee> {
        var list = [CollegeEmployee]()
        
        for index in 1...10 {
            let emp = CollegeEmployee()
            emp.userId = "学院员工 id = \(index)"
            list.append(emp)
        }
        
        return list
    }
}

//学校管理类

//分析 SchoolManager 类的直接朋友类有哪些 Employee、CollegeManager
//CollegeEmployee 不是 直接朋友 而是一个陌生类，这样违背了 迪米特法则
class SchoolManager {
    func getAllEmployee() -> Array<Employee> {
        var list = [Employee]()
        
        for index in 1...10 {
            let emp = Employee()
            emp.userId = "学校总部员工 id = \(index)"
            list.append(emp)
        }
        
        return list
    }
    
    func printAllEmployee(sub: CollegeManager) {
        
        //分析问题
        //1. 这里的 CollegeEmployee 不是  SchoolManager的直接朋友
        //2. CollegeEmployee 是以局部变量方式出现在 SchoolManager
        //3. 违反了 迪米特法则
        
        let list1 = sub.getAllEmployee()
        print("------------学院员工--------------")
        for item in list1 {
            print(item.userId)
        }
        
        let list2 = self.getAllEmployee()
        print("-----------学校总部员工")
        for item in list2 {
            print(item.userId)
        }
    }
}
