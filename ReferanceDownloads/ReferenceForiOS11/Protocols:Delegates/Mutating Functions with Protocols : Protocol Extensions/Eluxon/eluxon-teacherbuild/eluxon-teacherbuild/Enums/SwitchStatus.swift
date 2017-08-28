//
//  SwitchStatus.swift
//  eluxon-teacherbuild
//
//  Created by Caleb Stultz on 8/14/17.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
