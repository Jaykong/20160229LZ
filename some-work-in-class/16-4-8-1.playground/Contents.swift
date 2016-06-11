//: Playground - noun: a place where people can play

import UIKit

var str         = "Hello, playground"

enum sex {
    case boy(String,Int)
    case girl(String,Int)
}
let people1:sex = .boy("Boy",15)
let people2:sex = .girl("Girl",14)
switch people1 {
case let .boy(name,age):
    print("\(name) \(age)")
case let .girl(name,age):
    print("\(name) \(age)")
}
switch people2 {
case let .boy(name,age):
    print("\(name) \(age)")
case let .girl(name,age):
    print("\(name) \(age)")
}