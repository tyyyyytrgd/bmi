//
//  ViewController.swift
//  ios 13610333 week10 project2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    

    //Global Variable คือ ตัวแปรกลางที่ใช้ร่วมกันได้ใน Class ฟังก์ชั่นอื่นสามารถเรียกใช้ได้
//    var bmiValueCal = "0"
//    var calBrain = CalculateBrain()
    var calculatorBrain = CalculateBrain()

    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var silderHeight: UISlider!
    
    @IBOutlet weak var silderWeight: UISlider!
    
    @IBOutlet weak var bmiLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func calculatPressed(_ sender: Any) {
   
//        let bmi = weight / pow(height,2)
    
     //   print()
        
        let heightFromeUser = silderHeight.value
        let weightFromeUser = silderWeight.value
        //Local Variable
        
//        let bmi = weight / (height * height)
//        print(bmi)
        
//        bmiValueCal = String(format:"%.1f",weight / (height * height))
        //เรียกใช้ฟังก์ชั่นของ struct #2 เรียกฟังก์ชั่นของ struct Ffpdkilj8jkmuj9hv'dkiwx
        calculatorBrain.calculateBMI(height:heightFromeUser, weight:weightFromeUser)
        
//        self.performSegue(withIdentifier: "goToResult", sender: self)
         performSegue(withIdentifier: "goToResult", sender: self)
        
    
    
    }
    
    
    
    
    @IBAction func heightSilderPressed(_ sender: UISlider) {
        print(sender.value)
        print(String(format:"%.2f",sender.value))
        
        
        let height = String(format:"%.0f",sender.value)
        heightLable.text = "\(height) M."
    
    }
    
    @IBAction func weightSilderChanged(_ sender: UISlider) {
        print(sender.value)
        
        print(String(format:"%.0f",sender.value))
        
        let weight = String(format:"%.0f",sender.value)
        weightLable.text = "\(weight) Kg."
    
    }
    
    
    
    @IBAction func heartPressed(_ sender: Any) {
        
//        self.performSegue(withIdentifier: "goToCredit", sender: self)
    performSegue(withIdentifier: "goToCredit", sender: self)
    }
    
    override func prepare(for segue:UIStoryboardSegue,sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
    
                
                //            destinationVC.bmiValue = bmiValueCal
            //
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            
            destinationVC.color = calculatorBrain.getColor()
        }
        
        
        if segue.identifier == "goToCredit"{
            
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Banthita"
        }
        
        
        
    }
    
    
    
    
    
    
    
}

