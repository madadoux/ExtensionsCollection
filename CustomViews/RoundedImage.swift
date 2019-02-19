//
//  RoundedImage.swift
//  Raayek
//
//  Created by MacBook Pro on 2/4/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedImage: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        updateUI()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func updateUI() {
        layer.cornerRadius = frame.height/2
        clipsToBounds = true
        layer.masksToBounds = true
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1.0
    }
}
