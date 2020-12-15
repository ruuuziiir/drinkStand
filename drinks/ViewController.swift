//
//  ViewController.swift
//  drinks
//
//  Created by 7 on 2020/12/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var teaSelect: UISegmentedControl!
    
    @IBOutlet weak var sugar: UISlider!
    
    @IBOutlet weak var ice: UISlider!
    
    @IBOutlet weak var pearl: UISwitch!
    
    @IBOutlet weak var latte: UISwitch!
    
    @IBOutlet weak var note: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var teastr = "紅茶"
    var sugarstr = "微糖"
    var icestr = "微冰"
    var pearlstr = ""
    var lattestr = ""
    
    
    @IBAction func teaSelectAction(_ sender: Any) {
        if teaSelect.selectedSegmentIndex == 0 {
            teastr = "紅茶"
        }
        else if teaSelect.selectedSegmentIndex == 1 {
            teastr = "綠茶"
        }
        else if teaSelect.selectedSegmentIndex == 2 {
            teastr = "烏龍茶"
        }
    }
    
    @IBAction func sugarPercent(_ sender: Any) {
        
        sugar.value.round()
        
        if sugar.value == 0 {
            sugarstr = "無糖"
        }
        else if sugar.value == 1 {
            sugarstr = "微糖"
        }
        else if sugar.value == 2 {
            sugarstr = "半糖"
        }
        else if sugar.value == 3 {
            sugarstr = "少糖"
        }
        else if sugar.value == 4 {
            sugarstr = "全糖"
        }
    }
    
    @IBAction func icePercent(_ sender: Any) {
        
        ice.value.round()
        
        if ice.value == 0 {
            icestr = "去冰"
        }
        else if ice.value == 1 {
            icestr = "微冰"
        }
        else if ice.value == 2 {
            icestr = "半冰"
        }
        else if ice.value == 3 {
            icestr = "少冰"
        }
        else if ice.value == 4 {
            icestr = "正常冰"
        }
        
    }
    
    @IBAction func needPearl(_ sender: Any) {
        
        if pearl.isOn{
            pearlstr = "加珍珠"
        }
        else {
            pearlstr = ""
        }
        
    }
    
    @IBAction func needMilk(_ sender: Any) {
        
        if latte.isOn{
            lattestr = "拿鐵"
        }
        else {
            lattestr = ""
        }
    }
    
    @IBAction func sendOrder(_ sender: Any) {
        
        if teastr == "烏龍茶" {
            label.text = "已完售"
        }
        else {
            label.text = "今天您想來點💭：\n\n" + teastr + lattestr + icestr + sugarstr + pearlstr
        }
        
    }
    
    
}

