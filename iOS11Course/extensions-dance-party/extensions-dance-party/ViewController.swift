//
//  ViewController.swift
//  extensions-dance-party
//
//  Created by Jay Hall on 27/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var colorizeBtn: UIButton!
    @IBOutlet weak var wiggleBtn: UIButton!
    @IBOutlet weak var dimBtn: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colorizeBtnWasPressed(_ sender: Any) {
        colorizeBtn.colorize()
    }
    @IBAction func wiggleBtnWaspressed(_ sender: Any) {
        wiggleBtn.wiggle()
    }
    @IBAction func dimBtnWasPressed(_ sender: Any) {
        dimBtn.wiggle()
        dimBtn.dim()
    }
    
    
    
}

