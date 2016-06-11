//: Playground - noun: a place where people can play

import UIKit
//函数闭包
func math(num1:Int,num2:Int,doMath:(Int,Int) -> Int) -> Int {
    return doMath(num1,num2)
}
func mathadd(num1:Int, num2:Int) -> Int {
    return num1 + num2
}
func mathminus(num1:Int, num2:Int) -> Int {
    return num1 - num2
}
func mathmultiply(num1:Int, num2:Int) -> Int {
    return num1 * num2
}
func mathdivide(num1:Int, num2:Int) -> Int {
    return num1 / num2
}


math(1, num2: 2,doMath: mathadd)
math(1, num2: 2,doMath: mathminus)
math(1, num2: 2,doMath: mathmultiply)
math(4, num2: 2,doMath: mathdivide)

let a1 = math(3, num2: 6, doMath: {(x:Int,y:Int) -> Int in
return x * y
})
let a2 = math(4, num2: 5, doMath: {$0 - $1})
print(a2)
let a3 = math(5, num2: 8, doMath: (-))


//
struct XYPoint {
    var x:Int
    var y:Int
}
let p1 = XYPoint(x:3,y:5)
print(p1)

struct Rectangle {
    var origin: XYPoint
    var height: Int
    var width:  Int
    var center: XYPoint {
        get {
            return XYPoint(x: origin.x + width/2, y: origin.y + height/2)
        }
        set(newcenter) {
            origin = XYPoint(x: newcenter.x - width/2, y: newcenter.y - height/2)
        }
    }
}

var r1 = Rectangle(origin: XYPoint(x:3,y:5),height:20,width:20)
print(r1)
r1.center = XYPoint(x:10,y:10)
print(r1)




class XYPoint2 {
    var x = 0
    var y = 0
    //初始化方法
    init(x:Int,y:Int) {
        self.x = x
        self.y = y
    }
}

var pp1 = XYPoint2(x:1, y:2)
print(pp1)

class Rec2 {
    var origin: XYPoint2
    var w: Int
    var h: Int
    var cen: XYPoint2 {
        get {
            return XYPoint2(x: origin.x + w/2, y: origin.y + h/2)
        }
        set(newcenter2) {
            origin = XYPoint2(x: newcenter2.x - w/2, y: newcenter2.y - h/2)
        }
    }
    init(x:Int,y:Int,w:Int,h:Int) {
        self.origin = XYPoint2(x: x, y: y)
        self.w = w
        self.h = h
    }
    func description() {
        print("(\(origin.x)\(origin.y)\(self.w)\(self.h))")
    }
}


var rr1 = Rec2(x:1,y:2,w:3,h:4)
rr1.description()
