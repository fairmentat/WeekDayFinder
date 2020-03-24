//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Дмитрий on 24.03.2020.
//  Copyright © 2020 BioRobot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var dateTF: UITextField!
    
    
    @IBOutlet weak var monthTF: UITextField!
    
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDay() {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

