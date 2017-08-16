//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Jay Hall on 6/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong:String!
    
    var selectedSong:String {
        get {
            return _selectedSong
            
        }
        set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = _selectedSong
        
        // Do any additional setup after loading the view.
    }

    

}
