//
//  ViewController.swift
//  Deno
//
//  Created by 郭家宇 on 2023/7/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountInput: UITextField!
    @IBOutlet weak var discountInput: UITextField!
    @IBOutlet weak var serviceLabel: UILabel!
    @IBOutlet weak var personAmountLabel: UILabel!
    var sumIndex = 0
    var numberOfPeople = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func serviceSlider(_ sender: UISlider) {
        let integerValue = Int(sender.value)
        serviceLabel.text = "\(integerValue)%"
        if let amount = Int(amountInput.text!),
           let discount = Int(discountInput.text!){
            sumIndex = Int(amount - discount)
            print("sumIndex：\(sumIndex)")
            print("numberOfPeople：\(numberOfPeople)")
            print("integerValue：\(integerValue)")
            sumIndex = (sumIndex + (sumIndex * integerValue / 100))/numberOfPeople
            print("\(sumIndex)")
            personAmountLabel.text = "\(sumIndex)"
            
        }
    }
    
    @IBAction func playButtonDo(_ sender: UIButton) {
        if sender.tag == 1 {
            sender.configuration?.background.image = UIImage(named: "5")
            sender.tag = 0
            numberOfPeople -= 1
            // 圖示為未選取狀態
        } else {
            sender.configuration?.background.image = UIImage(named: "4")
            sender.tag = 1
            numberOfPeople += 1
        }
        
    }
    
}



