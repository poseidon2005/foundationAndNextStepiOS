//: Playground - noun: a place where people can play

import UIKit


class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
    //accelerate the vehicle
    }
    func brake() {
        //vehicle can brake
        
    }
}
let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"

ford.brake()

func passByRegerence(vehicle: Vehicle) {
    vehicle.model = "cheese"
}

print(ford.model)

passByRegerence(vehicle: ford) // Pass by reference

print (ford.model)


//var someonesAge = 20

//func passByValue(age: Int) {
//    age = 10
//}

//passByValue(age: someonesAge)


