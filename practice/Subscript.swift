//
//  Subscript.swift
//  practice
//
//  Created by huipeng on 2020/6/23.
//  Copyright © 2020 only.io. All rights reserved.
//

import Foundation

//class Point {
//    var x = 0.0, y = 0.0
//    subscript(index: Int) -> Double {
//        set {
//            if index == 0 {
//                x = newValue
//            } else if index == 1 {
//                y = newValue
//            }
//        }
//        get {
//            if index == 0 {
//                return x
//            } else if index == 1 {
//                return y
//            }
//            return 0
//        }
//    }
//}
//
//var p = Point()
//p[0] = 11.1
//p[1] = 22.2
//print(p.x, p.y, p[0], p[1])
// 11.1 22.2 11.1 22.2

//class Point {
//    var x = 0.0, y = 0.0
//    subscript(index i: Int) -> Double {
//        if i == 0 {
//            return x
//        } else if i == 1 {
//            return y
//        }
//        return 0
//    }
//}
//
//var p = Point()
//p.y = 22.2
//print(p[index: 1]) // 22.2

//class Sum {
//    static subscript(v1: Int, v2: Int) -> Int {
//        return v1 + v2
//    }
//}
//
//print(Sum[10, 20])  // 30


//class Point {
//    var x = 0, y = 0
//}
//
//class PointManager {
//    var point = Point()
//    subscript(index: Int) -> Point {
//        get { point }
//    }
//}

//struct Point {
//    var x = 0, y = 0
//}
//
//class PointManager {
//    var point = Point()
//    subscript(index: Int) -> Point {
//        set { point = newValue }
//        get { point }
//    }
//}
//
//var pm = PointManager()
//pm[0].x = 11
//pm[0].y = 22
//print(pm[0].x, pm[0].y)
//
//class Grid {
//    var data = [
//        [0, 1, 2],
//        [3, 4, 5],
//        [6, 7, 8]
//    ]
//
//    subscript(row: Int, column: Int) -> Int {
//        set {
//            guard row >= 0 && row < 3 && column >= 0 && column < 3 else {
//                return
//            }
//            data[row][column] = newValue
//        }
//        get {
//            guard row >= 0 && row < 3 && column >= 0 && column < 3 else {
//                return 0
//            }
//            return data[row][column]
//        }
//    }
//}
//
//var grid = Grid()
//grid[0, 1] = 77
//grid[1, 2] = 88
//grid[2, 0] = 99
//print(grid.data)
// [[0, 77, 2], [3, 4, 88], [99, 7, 8]]
