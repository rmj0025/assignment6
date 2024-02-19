//
//  ViewController.swift
//  assignment6
//
//  Created by user247998 on 2/18/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var USDTextField: UITextField!
    
    var convertLogic = ConvertLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        USDTextField.text = "0"
    }
    
    @IBAction func cadActive(_ sender: UISwitch) {
        convertLogic.setCAD(sender.isOn)
    }
    
    @IBAction func yenActive(_ sender: UISwitch) {
        convertLogic.setYen(sender.isOn)
    }
    
    @IBAction func poundActive(_ sender: UISwitch) {
        convertLogic.setPound(sender.isOn)
    }
    
    @IBAction func euroActive(_ sender: UISwitch) {
        convertLogic.setEuro(sender.isOn)
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        convertLogic.conversions(Float(USDTextField.text!)!)
        
        self.performSegue(withIdentifier: "toConversion", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConversion" {
            let navigation = segue.destination as! ConversionView
            
            navigation.usdAmount = USDTextField.text!
            navigation.cadAmount = convertLogic.usdTocad
            navigation.yenAmount = convertLogic.usdToyen
            navigation.poundAmount = convertLogic.usdTopound
            navigation.euroAmount = convertLogic.usdToeuro
        }
    }
}
