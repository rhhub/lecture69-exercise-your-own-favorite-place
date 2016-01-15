//
//  ButtonStyle.swift
//  lecture69-exercise-your-own-favorite-place
//
//  Created by Ryan Huebert on 1/12/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit

class ButtonStyle: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    // Design 1
    
    private let _cornerRadius: CGFloat = 10.0
    private let _backgroundColor = UIColor(netHexString: "00ABEC") // 00ABEC
    private let _titleColor = UIColor.whiteColor()
    private let _contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
    
    // Design 2 etc...
    
    override func awakeFromNib() {
        layer.cornerRadius = _cornerRadius
        backgroundColor = _backgroundColor
        setTitleColor(_titleColor, forState: .Normal)
        contentEdgeInsets = _contentEdgeInsets
    }
    
}


