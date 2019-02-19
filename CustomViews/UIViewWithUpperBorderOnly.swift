//
//  UIViewWithUpperBorderOnly.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 11/21/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit

@IBDesignable
class UIViewWithUpperBorderOnly: UIView {
    
    @IBInspectable var borderColor: UIColor?

    override func draw(_ rect: CGRect) {
        
        let border = CALayer()
        border.backgroundColor = borderColor?.cgColor
        border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: 1)
        self.layer.addSublayer(border)
    }

}
