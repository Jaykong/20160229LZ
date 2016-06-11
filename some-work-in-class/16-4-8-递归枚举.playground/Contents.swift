//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum ArigrithumExpression {
    case number(Int)
    indirect case add(ArigrithumExpression,ArigrithumExpression)
    indirect case multi(ArigrithumExpression,ArigrithumExpression)
}

let ex1 = ArigrithumExpression.number(5)
let ex2 = ArigrithumExpression.number(6)

let add1 = ArigrithumExpression.add(ex1,ex2)
let multi1 = ArigrithumExpression.multi(ex1, ex2)

func evaluate (exp:ArigrithumExpression) -> Int {
    switch exp {
    case .number(let x):
        return x
    case let .add(exp1, exp2):
        return evaluate(exp1) + evaluate(exp2)
    case let .multi(exp1, exp2):
        return evaluate(exp1) * evaluate(exp2)
    }
}

let result = evaluate(multi1)
let result2 = evaluate(add1)

//=---------------------------------

let number10 = ArigrithumExpression.number(10)
let number12 = ArigrithumExpression.number(12)
let number15 = ArigrithumExpression.number(15)
let add2 = ArigrithumExpression.add(number10,number12)
let multi2 = ArigrithumExpression.multi(add2,number15)
let result3 = evaluate(multi2)

