//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var length = 5
var width = 10
var length2 = 20
var width2 = 50
var length3 = 25
var width3 = 3


func areaCalculations(length: Int, width: Int) -> Int {
    return length * width
}

let shape1 = areaCalculations(length: 5, width: 6)
let shape2 = areaCalculations(length: 6, width: 2)

var bankAccountBalance = 500.00
var sigourneyWeaverAlienStomperShoes = 350.00

func purchaseItem(currentBalance: Double, itemPrice: Double) -> Double {
    if itemPrice <= currentBalance {
        print("Purchase item for: $\(itemPrice)")
        return currentBalance - itemPrice
    } else {
        print("You are broke. You should learn how to save money.")
        return currentBalance
    }
}

purchaseItem(currentBalance: 500, itemPrice: 150)
purchaseItem(currentBalance: bankAccountBalance, itemPrice: sigourneyWeaverAlienStomperShoes)

bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: sigourneyWeaverAlienStomperShoes)
 print(bankAccountBalance)

var retroLunchBox = 40.00

bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: retroLunchBox)

func calculateArea(length: Int, width: Int) -> Int {
    let area  = length * width
    return area
}

let area = calculateArea(length: length, width: width)
let area2 = calculateArea(length: length2, width: width)
let area3 = calculateArea(length: length3, width: width3)


var bankBalance = 400
var itemToBuy = 100

if bankBalance >= itemToBuy {
    print("purchased item:")
} else if itemToBuy > bankBalance {
    print("You need mo' money foo")
    
} else if itemToBuy == bankBalance {
    print("Hey buddy, your balance is now 0")
    
}

var bookTitle1 = "Harry Blotter and the Moppet of Mire"
var bookTitle2 = "Harry Potter and the sorceres Stone"

if "Correct Spelling" != bookTitle1 {
    print("Need to fix spelling before printing")
    
}

if bookTitle1 != bookTitle2 {
    print("Need to fix spelling before printing")
    }else if bookTitle2.characters.count >= 10 {
        print("find a new title for the book")
    } else if bookTitle1 == bookTitle2 {
        print("well done")
    }







