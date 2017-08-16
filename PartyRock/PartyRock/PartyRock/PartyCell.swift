//
//  PartyCell.swift
//  PartyRock
//
//  Created by Jay Hall on 12/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from url
        
        let url = URL(string: partyRock.imageURL)
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
    }
}
