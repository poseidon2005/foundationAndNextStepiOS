//: Playground - noun: a place where people can play

import UIKit

var  namesOfIntergers = [Int: String]()

namesOfIntergers[3] = "three"
namesOfIntergers[44] = "fourty four"

namesOfIntergers = [:]

var airports: [String: String] = ["YYZ": "TORONTO PEARSON", "LAX": "Los Angeles International"]

print("The airports dictionary has: \(airports.count) items")

if airports.isEmpty {
    print("The airports dictionary is empty!")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName")
}

for key in airports.keys {
    print("Key: \(key)")
}

for val in airports.values {
    print("Value: \(val)")
}

