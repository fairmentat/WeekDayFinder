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
    
    @IBAction func findWeekDay() {
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else {return }
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else {return resultLabel.text = "Ты еблан"}
         
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "Ru_ru")
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date)
        let bb = weekDay.capitalized
        
        resultLabel.text = bb
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
//test complete
