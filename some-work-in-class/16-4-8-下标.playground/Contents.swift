//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct TimeTable {
    let multipler: Int
    subscript(index:Int) -> Int {
      return multipler * index
    }
}

let ninetable = TimeTable(multipler:9)
ninetable[0]
ninetable[1]
ninetable[2]
ninetable[3]
ninetable[4]
ninetable[5]
ninetable[6]

class person {
    var name:String
    var age:Int
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    subscript(n:String) -> Int {
        get {
            return n.characters.count
        }
        set {
            age = 20
        }
    }
}

let p1 = person(name: "Doge", age: 19)
p1["fdjskfbsjkdfjdksfhdskjf"]
p1[""] = 111
p1.age

struct matrix {
    let rows:Int
    let columns:Int
    var grid:[Int]
    
    init(rows:Int,columns:Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0)
    }
    func isValible(r: Int, c: Int) -> Bool {
        return r >= 0 && r < rows && c >= 0 && c < columns
    }
    subscript(r:Int, c:Int) -> Int? {
        get {
            if isValible(r, c: c) {
            return grid[r * columns + c]
            } else {
                return nil
            }
        }
        set {
            if isValible(r, c: c) {
            grid[r * columns + c] = newValue!
            } else {
                print("oops")
            }
        }
    }
}

/*
 1 2 3
 4 5 6
 7 8 9
 */

var m1 = matrix(rows: 3, columns: 4)
/* 
 1 13 9 28
 3 12 11 31
 5 4 10 41
 */
m1[0,0] = 1
m1[0,1] = 13
m1[0,2] = 9
m1[0,4] = 28
m1[0,5]

