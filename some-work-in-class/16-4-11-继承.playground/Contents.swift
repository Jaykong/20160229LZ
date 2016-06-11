//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var currentSpd:Int
    init (speed:Int) {
        self.currentSpd = speed
    }
    var descrption:String {
        return "current speed is \(currentSpd)"
    }
    func makeNoise() {
        fatalError()
    }
}
let v1 = Vehicle(speed: 3)
print(v1.descrption)

class Bike: Vehicle {
    var hasBasket:Bool = true
}

class Tradem : Bike  {
    var currentNumberofPassenger = 2
}

class Train: Vehicle {
    override func makeNoise() {
        print("wuwuwuwuwuwu")
    }
    override var currentSpd: Int {
        get {return 0}
        set {self.currentSpd = newValue}
    }
}

class Car: Vehicle {
    var gear = 1
    override var descrption: String {
        return "\(super.descrption) the car gear is \(gear)"
    }
}
let car1 = Car(speed: 3333)
car1.descrption

class AutoCar: Car {
    override var currentSpd: Int {
        didSet {
            gear = currentSpd % 10
        }
    }
}
let car2 = AutoCar(speed: 55)
car2.descrption








let t1 = Train(speed: 999)
t1.descrption

class TimeTable {
    var multipler = 0
    init (multipler : Int) {
        self.multipler = multipler
    }
    subscript(index:Int) -> Int {
        return multipler * index
    }
}
class MultiTimeTable: TimeTable {
    override subscript(index:Int) -> Int {
        return self.multipler * self.multipler * index
    }
}
let tt1 = TimeTable(multipler: 3)
tt1[1]
tt1[2]
let mtt1 = MultiTimeTable(multipler: 3)
mtt1[1]
mtt1[2]
