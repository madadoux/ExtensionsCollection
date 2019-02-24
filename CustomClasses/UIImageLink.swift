//
//  UIImageLink.swift
//  Raayek
//
//  Created by MacBook Pro on 3/11/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import UIKit
class UIImageLink: UIImageView {

    @IBInspectable  var isCircular :Bool = false
    @IBInspectable var hasBorder : Bool = true
    @IBInspectable var borderWidth : CGFloat = 2.0
    @IBInspectable var borderColor : UIColor = UIColor.gray
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var action : (()->Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
        isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(performBlock))
        addGestureRecognizer(tap)
        if isCircular{
            layer.cornerRadius = layer.frame.height/2
            clipsToBounds = true
        }
        if hasBorder {
            layer.borderWidth = borderWidth
            layer.borderColor = borderColor.cgColor
        }
        contentMode = .scaleAspectFill
        clipsToBounds = true
    }
    
    @objc func performBlock()
    {
        action?()
    }
}


