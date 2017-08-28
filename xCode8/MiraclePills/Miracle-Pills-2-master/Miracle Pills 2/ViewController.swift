//
//  ViewController.swift
//  Miracle Pills 2
//
//  Created by Jonathan Foote on 8/21/16.
//  Copyright © 2016 Jonathan Foote. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTxt: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var miraclePillImg: UIImageView!
    @IBOutlet weak var miraclePillsLbl: UILabel!
    @IBOutlet weak var costLbl: UILabel!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTxt: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var streetTxt: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["Alabama","Alaska","Arkansas","California","Colorado","Florida"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxt.isHidden = true
        buyNowBtn.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        statePickerBtn.isHidden = true
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipCodeTxt.isHidden = true
        zipCodeLbl.isHidden = true
        buyNowBtn.isHidden = true
        miraclePillImg.isHidden = true
        miraclePillsLbl.isHidden = true
        costLbl.isHidden = true
        dividerView.isHidden = true
        fullNameLbl.isHidden = true
        fullNameTxt.isHidden = true
        streetLbl.isHidden = true
        streetTxt.isHidden = true
        cityLbl.isHidden = true
        cityTxt.isHidden = true
        stateLbl.isHidden = true
        successImg.isHidden = false
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryTxt.isHidden = false
        zipCodeLbl.isHidden = false
        zipCodeTxt.isHidden = false
        buyNowBtn.isHidden = false
    }

}

