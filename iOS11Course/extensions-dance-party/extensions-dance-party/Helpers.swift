//
//  Helpers.swift
//  extensions-dance-party
//
//  Created by Jay Hall on 27/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit

func generateRandomNumbers(quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
