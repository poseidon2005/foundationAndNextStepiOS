//
//  ViewController.swift
//  mvcTest
//
//  Created by Jay Hall on 13/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var renameFirst: UITextField!
    @IBOutlet var fullName: UILabel!
    
    let person = Person(first: "John", last: "Hancock")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let person = Person(first: "John", last: "Hancock")
        
        //fullName.text = person.fullName
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        fullName.text = Person.fullName
        
        
    }

    @IBAction func renamePressed(_ sender: Any) {
        if let txt = renameFirst.text {
            Person.fullName = txt
            fullName.text = Person.fullName
            
            
        }
    }
    
    
}

