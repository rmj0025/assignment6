//
//  ConversionView.swift
//  assignment6
//
//  Created by user247998 on 2/18/24.
//

import UIKit

class ConversionView: UIViewController {

    @IBOutlet weak var USDLabel: UILabel!
    
    @IBOutlet weak var CADLabel: UILabel!
    
    @IBOutlet weak var YenLabel: UILabel!
    
    @IBOutlet weak var PoundLabel: UILabel!
    
    @IBOutlet weak var EuroLabel: UILabel!
    
    var usdAmount : String = ""
    var cadAmount : Float = 0
    var yenAmount : Float = 0
    var poundAmount : Float = 0
    var euroAmount : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValues()
    }
    
    func setValues() {
        USDLabel.text = "Amount in USD: $ \(usdAmount)"
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        CADLabel.text = formatter.string(from: NSNumber(value: cadAmount))
        YenLabel.text = formatter.string(from: NSNumber(value: yenAmount))
        PoundLabel.text = formatter.string(from: NSNumber(value: poundAmount))
        EuroLabel.text = formatter.string(from: NSNumber(value: euroAmount))
    }
    
    @IBAction func backToMain(_ sender: UIButton) {
        dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
