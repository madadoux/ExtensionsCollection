//
//  ViewWithBorder.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 8/6/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit

@IBDesignable
class ViewWithBorder: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
}
