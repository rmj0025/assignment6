//
//  ConvertLogic.swift
//  assignment6
//
//  Created by user247998 on 2/18/24.
//

import Foundation

struct ConvertLogic {
    
    var CADSwitch = true
    var YenSwitch = true
    var PoundSwitch = true
    var EuroSwitch = true
    
    var euroConversion = 0.927734
    var cadConversion = 1.347864
    var poundConversion = 0.792745
    var yenConversion = 149.946897
    
    var usdTocad: Float = 0
    var usdToeuro: Float = 0
    var usdTopound: Float = 0
    var usdToyen: Float = 0
    
    mutating func setCAD(_ switchValue: Bool) {
        if switchValue {
            CADSwitch = true
        } else {
            CADSwitch = false
        }
    }
    
    mutating func setYen(_ switchValue: Bool) {
        if switchValue {
            YenSwitch = true
        } else {
            YenSwitch = false
        }
    }
    
    mutating func setPound(_ switchValue: Bool) {
        if switchValue {
            PoundSwitch = true
        } else {
            PoundSwitch = false
        }
    }
    
    mutating func setEuro(_ switchValue: Bool) {
        if switchValue {
            EuroSwitch = true
        } else {
            EuroSwitch = false
        }
    }
    
    mutating func conversions(_ usdValue: Float){
        if CADSwitch {
            usdTocad = usdValue * Float(cadConversion)
        }
        if YenSwitch {
            usdToyen = usdValue * Float(yenConversion)
        }
        if PoundSwitch {
            usdTopound = usdValue * Float(poundConversion)
        }
        if EuroSwitch {
            usdToeuro = usdValue * Float(euroConversion)
        }
    }
}
