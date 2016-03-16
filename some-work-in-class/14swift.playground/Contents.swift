//: Playground - noun: a place where people can play

import UIKit

class view1: UIView {
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(ovalInRect: rect)
        UIColor.redColor().setFill()
        path.fill()
    }
}

let view1 = view1(frame: CGRect(x: 3, y: 3, width: 100, height: 100))
view1.backgroundcolor = UIColor.bluecolor()