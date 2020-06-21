//
//  Ocp_1.swift
//  Principle
//
//  Created by huipeng on 2020/6/20.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

protocol Shape1 {
    var m_type: GraphicType { get set }
    
    func draw()
}

class Rectangle1: Shape1 {
    var m_type: GraphicType = .Rectangle
    
    func draw() {
        print("绘制矩形")
    }
}

class Circle1: Shape1 {
    var m_type: GraphicType = .Circle
    
    func draw() {
        print("绘制圆形")
    }
}

class Triangle1: Shape1 {
    var m_type: GraphicType = .Triangle
    
    func draw() {
        print("绘制三角形")
    }
}

class OtherGraphic: Shape1 {
    var m_type: GraphicType = .Other
    
    func draw() {
        print("绘制其他图形")
    }
}

class GraphicEditor1 {
    func drawShape(s: Shape1) {
        s.draw()
    }
    
    static func graphicEditor() {
        let graphicEditor = GraphicEditor1()
        graphicEditor.drawShape(s: Rectangle1())
        graphicEditor.drawShape(s: Circle1())
        graphicEditor.drawShape(s: Triangle1())
    }
}

/**
 
 改进的思路分析
 思路:把创建 Shape 类做成抽象类，并提供一个抽象的 draw 方法，让子类去实现即可，
 这样我们有新的图形 种类时，只需要让新的图形类继承 Shape，
 并实现 draw 方法即可，使用方的代码就不需要修 -> 满足了开闭原则
 
 */
