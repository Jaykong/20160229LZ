//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum Direction {
    case south
    case north
    case west
    case east
    func description() {
        print("direction")
    }
}
var d1 = Direction.south
var d2:Direction = .west

enum naturalNum:Int {//raw value
    case one   = 1
    case two   = 2
    case three = 3
}

var na = naturalNum.one
print(na.rawValue)

enum season:String {
    case Spring
    case Summer
    case Autumn
    case Winter
}
let s1 = season.Spring
print(s1.rawValue)

enum Error {
    case Http(Int,String)
    case Socket(Int,Int,String)
}
var e1:Error = .Http(404, "Page Not Found")
var e2:Error = .Socket(1, 103, "not found")
switch e1 {
case let .Http(errorName, errorDescription):
    print("Error:\(errorName), \(errorDescription)")

case let .Socket(x,y,z):
    print("\(x)\(y)\(z)")
}


//enum barCode {
//    case UPCA(Int,Int,Int,Int)
//    case QRCode(String)
//}
//switch ProductBarCode {
//    case let .UPCA()
//}

