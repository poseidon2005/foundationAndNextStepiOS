//
//  Location.swift
//  alpacaWeather
//
//  Created by Jay Hall on 26/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//


import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
