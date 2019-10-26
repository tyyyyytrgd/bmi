//
//  CalculateBrain.swift
//  ios 13610333 week10 project2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import Foundation
import UIKit
//Kit = ชุดเครื่องมือ
//UI = User Interface เป็น


// struct จะเป็นแบบบ pass by value  เหมือนก็อปปี้แยกกันคนละอัน แก้กับอันใดกับอันหนึ่งไม่มีผลกับอีกอัน
//class จะเป็นแบบ Pass by Reference เหมือนก็อปปี้แยกกันคนละอัน แต่แก้กับอันใดอันนึงจะมีผลกับอีกอัน
struct CalculateBrain {
//    var bmi: Float = 0.0   // 1 Value เก็บตัวเดียวนะะะ
    //ไม่ใช้แล้นนนเพราะใช้อันล่างแทนอะะ
    
    
    var bmiStruct: BMI?   // 3 Value เก็บสามตัวเป็นชุด (value,advice,color)
    
    //เครื่องหมายคำถาม ? คือเป็นตัวแปรชนิด Optional คือ ตัวเลือกจะมีค่าหรือไม่มีค่าก็เป็นไปได้
    //ดังนั้นมันอาจจะไม่มีค่าก็ได้
    
    func getBMIValue() -> String {
//        let bmiTo1DecimalPalce = String(format: "%.1f", bmi)
        let bmiTo1DecimalPalce = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        return bmiTo1DecimalPalce
    }
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "NO Advice"
        
        // if แบบย่อ
        // ตัวแปรที่ต้องการดูค่าว่ามีค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
        // bmiStruct?.advice ?? "NO Advice"
        // ตัวแปรที่ต้องการดูค่าว่ามีค่าหรือไม่ = bmiStruct
    }
    
    func getColor() -> UIColor {
        return  bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height:Float,weight:Float) {
        
        // bmi ตัวที่ใช้ ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        // ส่วน weight กับ height คือ ตัวที่ฟังก์ชั่ยรับค่ามาในชื่อนัน เป็น global var
        
//        bmi = weight / (height*height)
        
        let bmiValueLocal = weight / (height * height)
        if bmiValueLocal < 18.5{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!",color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            
        }else if bmiValueLocal  < 24.9{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a fiddle!",color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        
        }else {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat less pies!",color: #colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1))
    }//end else
}//end func
}//end struct
