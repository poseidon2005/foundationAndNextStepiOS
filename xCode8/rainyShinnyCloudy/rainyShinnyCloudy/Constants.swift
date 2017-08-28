//
//  Constants.swift
//  rainyShinnyCloudy
//
//  Created by Jay Hall on 14/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATTITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "74bfb4b7cb24455d8df2c8f20af44ec8"

typealias DownloadComplete = () -> ()


//let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATTITUDE)-37.6674\(LONGITUDE)144.5755\(APP_ID)\(API_KEY)"

//let FORCAST_URL = "https://api.openweathermap.org/data/2.5/forecast/daily?lat=-37.6674&lon=144.5756&cnt=10&appid=74bfb4b7cb24455d8df2c8f20af44ec8"


let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=42a1771a0b787bf12e734ada0cfc80cb"
let FORCAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"
