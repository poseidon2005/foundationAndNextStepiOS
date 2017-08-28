//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//var length = 5
//var width = 10
//var area = length * width

var length2 = 6
var width2 = 10
var area2 = length2 * width2

var length3 = 5
var width3 = 7
var area3 = length3 * width3

func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width
    return area
}
//functions are callerd either functions or methods 
//length and width are arguments or perameters

var newArea = calculateArea(length: 5, width: 7)
var newArea3 = calculateArea(length: 8, width: 9)


func calculateArea2(length: Int, width: Int) -> String {
    let area = length * width
    return "\(area)"
}
var newArea4 = calculateArea2(length: 6, width: 7)
var bankAccountBalance = 500.00
var sigourneyWeaverShoes = 350.00
//var currentBalance

func purchaseItem(currentBalance: Double, itemPrice: Double) -> Double {
    if itemPrice <= currentBalance {
        print("Purchased item for: $\(itemPrice)")
        return currentBalance - itemPrice
    } else {
        print("Your broke. You should learn how to save money.")
        return currentBalance
    }
}

//var bankAccountBalance = purchaseItem(currentBalance: 500.00, itemPrice: 50.00)
print(bankAccountBalance)

func purchaseItem2(currentBalance: inout Double, itemPrice: Double) {
    if itemPrice <= currentBalance {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for: $\(itemPrice) and have $\(bankAccountBalance) left.")
        //return currentBalance - itemPrice
    } else {
        print("Your broke. You should learn how to save money.")
        //return currentBalance
    }
}

purchaseItem2(currentBalance: &bankAccountBalance, itemPrice: 150)


print(bankAccountBalance)

