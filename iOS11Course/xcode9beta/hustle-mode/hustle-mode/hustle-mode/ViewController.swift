//
//  ViewController.swift
//  hustle-mode
//
//  Created by Jay Hall on 27/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBg: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleModeLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
//    var player: AVAudioPlayer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let path = Bundle.main.path(forResource: "crash", ofType: "wav")!
//        let url = URL(fileURLWithPath: path)
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            player.prepareToPlay()
//        } catch let error as NSError {
//            print(error.description)
//        }
//
    }
    
    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBg.isHidden = true
        powerBtn.isHidden = true
        
//        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 20, width: 381, height: 314)
        }) {(finished) in
            self.hustleModeLbl.isHidden = false
            self.onLbl.isHidden = false
            
        }
    }
    
    
    
    


}

