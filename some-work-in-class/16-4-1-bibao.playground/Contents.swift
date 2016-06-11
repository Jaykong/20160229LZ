//: Playground - noun: a place where people can play

import UIKit


func add(a:Int,b:Int) -> Int {
    return a + b
}

func char(c:Character) -> Character {
    return c
}

func nothing() {}

add(1, b: 2)
//函数类型
let add2:(Int,Int) -> Int = add
add2(1,2)

func str(str1:String,str2:String) -> String {
    return (str1) + (str2)
}
str("aasd",str2: "fdsfsdfsdf")
let strrr = str
strrr("sadasdasd",str2: "dasddasd")
let strr:(String,String) -> String = str
strr("123","3445")

let addstr = {(str1:String,str2:String) -> String in
    return str1 + str2
}
addstr("12312","123123123")

let nums:[String] = ["One","Two","Three","Four"]
nums.sort(){(a:String,b:String) -> Bool in
    return a > b
}
nums.sort { (a,b) in
    return a < b
}
nums.sort{$0 < $1}
nums.sort()


func math(q:Double,w:Double,mat:(Double,Double) -> Double) -> Double {
    return mat(q,w)
}
func adddouble(a:Double,b:Double) -> Double {
    return a + b
}
func mindouble(a:Double,b:Double) -> Double {
    return a - b
}
func muldouble(a:Double,b:Double) -> Double {
    return a * b
}
func divdouble(a:Double,b:Double) -> Double {
    return (a) / (b)
}
math(1, w: 2, mat:adddouble)
math(2, w: 2, mat:mindouble)
math(1, w: 2, mat:muldouble)
math(1, w: 2, mat:divdouble)
