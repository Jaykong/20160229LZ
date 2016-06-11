/*:
 # Playground - noun: a place where people can play
 * hi
 * hi
 
 */
import UIKit

var str = "Hello, playground"

let aConstInt = 10
var aChangableInt = 11
aChangableInt = 12


let aStr = "this is a string"
var anoStr : String = "another string"
// oc = NSString *anoStr = @"another string";
let bStr = "b"
var bnoStr: Character = "b"

let f1 = 10
let f2:Float = 11
let d1 = 12
let d2:Double = 13
let i1 = 14
let i2:Int = 15

//类型标注
let typeAnotation:String = "string"
//类型推断
let notDeclaredType = 13 //推断为整形
let norDeclaredStr = "无标注" //标注为字符
let notDeclaredDecimal = 1.23 //默认推断为double

//字符串连接
let hello = "hello"
let name = "something"
//插值法: \(填入)
let hellowho = "\(hello) \(name)"
//直接用加号连接
let who2 = hello + name
let who3 = "hello" + "something"
let who4 = hello + " " + name
let who5 = hello + " \(name)"

// 字面量 literal
let literalInt = 3
let literalFloat = 3.5
let literalString = "literal"

//条件判断 if switch
let n = -1

if n > 0{
    print("+")
} else if n == 0 {
    print("0")
} else {
    print("-")
}

switch n {
case -1:print("-")
case 0:print("0")
case 1:print("+")
default:break
}


//三目运算
let result = 2 < 1 ? 1 : 2
//循环loop
for _ in 1...10 {
    print("10")
}
for var index in 1..<10 {
    index = index + 1
    print("%i",index)
}




let arr:[Int] = [1,2,3,4,5]
for element in arr {
    print(element)
}
let strarr:[String] = ["i","ii","iii","ix","x"]
for ele in strarr {
    print(ele)
}




func funcName(p1:Int,p2:Int) ->Int {
    let re = p1 * p2;
    return re
}
let re = funcName(13032131, p2: 3123123)



let natureNumber = 12
switch natureNumber {
case 11,12,13,14,15:
    print("11,15")
    fallthrough //继续执行下一步
case 1,2,3,4,5,6,7,8,9,10:
    print("1...10")
default:
    break
}

for number in 1...50 {
//    switch number {
//    case 1:
//        print("1")
//    default:
//        break
        if number == 9 {
            continue
        }
    print(number)
    }



var labelnumber = 3
label:while labelnumber > 4 {
    switch labelnumber {
    case 3:
        labelnumber += 1
        break
    default:
        break
    }
}

let tuple1 = ("lily",4,"female")
tuple1.0
tuple1.1

let point:(Int,Int) = (10,12)
switch point {
case (11,11):
    print("1111")
case (_,12):
    print("y=12")
case (10,_):
    print("x=12")
case let(x,y) where x == y:
    print(x,y)
case let(x,y):
    print(x,y)
default:
    print(point.0,point.1)
}