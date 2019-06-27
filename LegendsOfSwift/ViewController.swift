//
//  ViewController.swift
//  LegendsOfSwift
//
//  Created by Ella Gryf-Lowczowska on 27/06/2019.
//  Copyright © 2019 Ella Gryf-Lowczowska. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var genderSegmentControl: UISegmentedControl!
    @IBOutlet weak var getFactButton: UIButton!
    @IBOutlet weak var outputLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameField.placeholder = "Chuck"
        lastNameField.placeholder = "Norris"

    }

    @IBAction func getFactPressed(_ sender: UIButton) {
    }
    
    
    
    
    

}

