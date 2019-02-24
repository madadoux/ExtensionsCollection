//
//  UICustomLabel.swift
//  Raayek
//
//  Created by MacBook Pro on 3/18/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import UIKit

class UICustomLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: 5, left: 0, bottom: 0, right: 5)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }

}
