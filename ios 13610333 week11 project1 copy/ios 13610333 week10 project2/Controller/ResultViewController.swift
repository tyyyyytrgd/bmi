//
//  ResultViewController.swift
//  ios 13610333 week10 project2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //properties
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLable: UILabel!
    
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func recalculatPressed(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
        
        
    }//end func re
    
    
    
    
}
