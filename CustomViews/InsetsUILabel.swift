//
//  InsetsUILabel.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 11/21/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit

@IBDesignable
class InsetsUILabel: UILabel {
    
    @IBInspectable var topInset:CGFloat = 0.0
    @IBInspectable var leftInset:CGFloat = 0.0
    @IBInspectable var bottomInset:CGFloat = 0.0
    @IBInspectable var rightInset:CGFloat = 0.0

    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }

}
