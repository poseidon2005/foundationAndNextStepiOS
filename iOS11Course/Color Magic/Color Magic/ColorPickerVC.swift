//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Jay Hall on 28/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colorBtnWasPressed(sender: UIButton){
        if delegate != nil
        {
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
        }
    }
  

}
