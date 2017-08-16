//
//  roundedImageView.swift
//  mvcTest
//
//  Created by Jay Hall on 13/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit

class roundedImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
    
}
