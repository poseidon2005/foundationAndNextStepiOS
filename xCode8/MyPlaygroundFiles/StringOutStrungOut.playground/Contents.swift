//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var balanceOfBank = 50
var myString = "whats up mate?"
var firstName = "Jack"
var age = 45
var lastName = "Bauer"
var fullName = firstName + " " + lastName
//string concatination/ string manipulation
var fullName2 = "\(firstName) \(lastName) is \(age)"
fullName.append(" III")
var bookTitle = "revenge of the crab cakes"
bookTitle = bookTitle.capitalized
var chatRoomAnnoying = "PLEASE HELP ME NOW! HERE IS MY 100 LINES OF CODE"
var lowerCaseChat =  chatRoomAnnoying.lowercased()
var sentence = "What the fetch?! Heck that is crazy!"
if sentence.contains(("fetch") || sentence.contains("Heck"))
{
    sentence.replacingOccurrences(of: "Heck", with: "Tuna")
    sentence.replacingOccurrences(of: "fetch", with: "playa")
}




