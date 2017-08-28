//
//  ViewController.swift
//  eluxon-teacherbuild
//
//  Created by Caleb Stultz on 8/14/17.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flashlightStatusLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwitchStatus? = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus?.toggle()
        if switchStatus == .off {
            toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            flashlightStatusLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            flashlightStatusLbl.text = "🌚 OFF 🌚"
        } else {
            toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            flashlightStatusLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            flashlightStatusLbl.text = "🌝 ON 🌝"
        }
    }
    
}

