//
//  Extensions.swift
//  lecture69-exercise-your-own-favorite-place
//
//  Created by Ryan Huebert on 1/14/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit


extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
    assert(red >= 0 && red <= 255, "Invalid red component")
    assert(green >= 0 && green <= 255, "Invalid green component")
    assert(blue >= 0 && blue <= 255, "Invalid blue component")

    self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(netHex: Int) {
    self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }

    convenience init(netHex: Int, alpha: CGFloat) {
    self.init(red:CGFloat((netHex >> 16) & 0xff), green:CGFloat((netHex >> 8) & 0xff), blue:CGFloat(netHex & 0xff), alpha: alpha)
    }

    /* Tutorial
    var color = UIColor(red: 0xFF, blue: 0xFF, green: 0xFF)
    var color2 = UIColor(netHex:0xFFFFFF)
    */

    convenience init(netHexString:String) {
    // Improvements: include alpha component of netHexString parameter (8 characters), optional alpha parameter that ovverides alpha component of a net hex string
    var cString:String = netHexString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString

    if (cString.hasPrefix("#")) {
    cString = cString.substringFromIndex(cString.startIndex.advancedBy(1))

    }

    if (cString.hasPrefix("0X")) {
    cString = cString.substringFromIndex(cString.startIndex.advancedBy(2))
    }

    if cString.characters.count != 6 {
    // Input failed result to default
    cString = "808080"

    }

    var netHexInt:UInt32 = 0
    NSScanner(string: cString).scanHexInt(&netHexInt)

    self.init(red:CGFloat((netHexInt & 0xFF0000) >> 16) / 255.0, green:CGFloat((netHexInt & 0x00FF00) >> 8) / 255.0, blue: CGFloat(netHexInt & 0x0000FF) / 255.0, alpha: 1)
    }


}
