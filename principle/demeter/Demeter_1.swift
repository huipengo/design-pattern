//
//  Demeter_1.swift
//  Principle
//
//  Created by huipeng on 2020/6/20.
//  Copyright © 2020 only.io. All rights reserved.
//  迪米特法则改进

import Foundation

// 管理学院员工的管理类
class CollegeManager1 {
    public func getAllEmployee() -> Array<CollegeEmployee> {
        var list = [CollegeEmployee]()
        
        for index in 1...10 {
            let emp = CollegeEmployee()
            emp.userId = "学院员工 id = \(index)"
            list.append(emp)
        }
        
        return list
    }
    
    func printEmployee() {
        let list1 = getAllEmployee()
        print("------------学院员工--------------")
        for item in list1 {
            print(item.userId)
        }
    }
    
}

//学校管理类

//分析 SchoolManager 类的直接朋友类有哪些 Employee、CollegeManager
//CollegeEmployee 不是 直接朋友 而是一个陌生类，这样违背了 迪米特法则
class SchoolManager1 {
    func getAllEmployee() -> Array<Employee> {
        var list = [Employee]()
        
        for index in 1...10 {
            let emp = Employee()
            emp.userId = "学校总部员工 id = \(index)"
            list.append(emp)
        }
        return list
    }
    
    func printAllEmployee(sub: CollegeManager1) {
        //分析问题
        //1. 将输出学院的员工方法，封装到CollegeManager
        sub.printEmployee();
        
        let list2 = self.getAllEmployee()
        print("-----------学校总部员工-----------")
        for item in list2 {
            print(item.userId)
        }
    }
}
