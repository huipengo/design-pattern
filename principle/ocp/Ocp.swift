//
//  Ocp.swift
//  Principle
//
//  Created by huipeng on 2020/6/20.
//  Copyright © 2020 only.io. All rights reserved.
//  开闭原则

import Foundation

enum GraphicType: Int {
    case Rectangle = 1, Circle, Triangle, Other
}

class Shape {
    let m_type: GraphicType
    init(m_type: GraphicType) {
        self.m_type = m_type
    }
}

class Rectangle: Shape {
    init() {
        super.init(m_type: GraphicType.Rectangle)
    }
}

class Circle: Shape {
    init() {
        super.init(m_type: GraphicType.Circle)
    }
}

class Triangle: Shape {
    init() {
        super.init(m_type: GraphicType.Triangle)
    }
}

class GraphicEditor {
    func drawShape(s: Shape) {
        switch s.m_type {
        case .Rectangle:
            drawRectangle(s: s)
        case .Circle:
            drawCircle(s: s)
        case .Triangle:
            drawTriangle(s: s)
        case .Other: break
            
        }
    }
    
    func drawRectangle(s: Shape) -> Void {
        print("绘制矩形")
    }
    
    func drawCircle(s: Shape) -> Void {
        print("绘制圆形")
    }
    
    func drawTriangle(s: Shape) -> Void {
        print("绘制三角形")
    }
    
    
    static func graphicEditor() {
        let graphicEditor = GraphicEditor()
        graphicEditor.drawShape(s: Rectangle())
        graphicEditor.drawShape(s: Circle())
        graphicEditor.drawShape(s: Triangle())
    }
}

/**
 1) 优点是比较好理解，简单易操作。
 2) 缺点是违反了设计模式的ocp原则，即对扩展开放(提供方)，对修改关闭(使用方)。即当我们给类增加新功能的
 时候，尽量不修改代码，或者尽可能少修改代码.
 3) 比如我们这时要新增加一个图形种类三角形，我们需要做如下修改，修改的地方较多
 */
