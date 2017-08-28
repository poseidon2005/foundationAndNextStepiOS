//
//  WeatherCell.swift
//  rainyshinycloudy
//
//  Created by Caleb Stultz on 7/27/16.
//  Copyright © 2016 Caleb Stultz. All rights reserved.
//

import UIKit
//import Alamofire


class WeatherCell: UITableViewCell {
    
    
    
   @IBOutlet weak var weatherIcon: UIImageView!
   @IBOutlet weak var dayLabel: UILabel!
   @IBOutlet weak var weatherType: UILabel!
   @IBOutlet weak var highTemp: UILabel!
   @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forcast: Forcast) {
        lowTemp.text = "\(forcast.lowTemp)"
        highTemp.text = "\(forcast.highTemp)"
        weatherType.text = forcast.weatherType
        weatherIcon.image = UIImage(named: forcast.weatherType)
        dayLabel.text = forcast.date
    }
    
}
