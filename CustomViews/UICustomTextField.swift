//
//  UICustomTextField.swift
//  MedicalServices
//
//  Created by Mmustafa on 7/17/18.
//  Copyright © 2018 ITG. All rights reserved.
//

import Foundation
import UIKit
class UICustomTextField : UITextField {
    @IBInspectable  var editingRectOffset : CGPoint = CGPoint.zero
    @IBInspectable  var textRectOffset :  CGPoint = CGPoint.zero
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: textRectOffset.x, dy: textRectOffset.y)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: editingRectOffset.x, dy: editingRectOffset.y)
    }
    
}
