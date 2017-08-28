//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Jay Hall on 28/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off
    mutating func toggle() {
        switch self {
        case .on:
            //do something
            self = .off
        case .off:
            //do something else
            self = .on
        }
    }
}
