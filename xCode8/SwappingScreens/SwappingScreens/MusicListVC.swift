//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Jay Hall on 6/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songeTitle = "Quit Playing Games Wiuth My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songeTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            PlaySongVC {
            if let song = sender as? String {
            destination.selectedSong = song
            }
        }
    }
}
