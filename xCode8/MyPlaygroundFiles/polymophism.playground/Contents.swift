//: Playground - noun: a place where people can play

import UIKit





//class Rectangle {
//    var area: Double?
    
//    func calculateArea(length: Double, width: Double) {
//        area = length * width
//    }
//}

//class Triangle {
//    var area: Double?
//
//    func calculateArea(base: Double, heigth: Double) {
//        area = (base * heigth) / 2
//    }
//}

class Shape {
    var area: Double?
    
    func calculateArea(valueA: Double, valueB: Double) {
        
    }
}

class Triangle: Shape {
    
    override func calculateArea(valueA: Double, valueB: Double) {
        area = (valueA * valueB) / 2
        
    }
}

class Rectangle: Shape {
    
    override func calculateArea(valueA: Double, valueB: Double){
        area = valueA * valueB
    }
}
