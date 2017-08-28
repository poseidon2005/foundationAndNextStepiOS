//
//  constants.swift
//  alpacaWeather
//
//  Created by Jay Hall on 26/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//
//
// openweatherMap api key 74bfb4b7cb24455d8df2c8f20af44ec8
// -37.6674 144.5755
/*
 // http://api.openweathermap.org/data/2.5/weather?lat=-37.6674&lon=144.5755&appid=74bfb4b7cb24455d8df2c8f20af44ec8
 */
import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "74bfb4b7cb24455d8df2c8f20af44ec8"


typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=74bfb4b7cb24455d8df2c8f20af44ec8"
let FORECAST_URL = "https://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=74bfb4b7cb24455d8df2c8f20af44ec8"
