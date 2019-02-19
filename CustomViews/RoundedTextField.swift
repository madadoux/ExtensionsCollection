//
//  RoundedTextField.swift
//  Raayek
//
//  Created by MacBook Pro on 2/1/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import UIKit

class RoundedTextField: UITextField {
    
    @IBInspectable var radiusRelativeToH :CGFloat  = 0.5
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = layer.frame.size.height * radiusRelativeToH
        borderStyle = .none
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.white.cgColor
      /*  if let placeholder = placeholder {
            self.attributedPlaceholder = NSAttributedString(string:placeholder,
                                                                     attributes: [NSAttributedStringKey.foregroundColor: UIColor.white.withAlphaComponent(0.7)])
        }*/
    }
    
    //For placeholder
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 15, dy: 0)
    }
    
    //For editable text
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 0)
    }


}
