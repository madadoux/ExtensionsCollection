//
//  CircularLabel.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 8/7/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit

class CircularLabel: UILabel {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.layer.masksToBounds = true
    }
    
    func updateLabelRadius() {
        
        self.layer.cornerRadius = self.frame.size.width / 2 // Width and height should be equal
        self.layer.borderWidth = 1.0
        self.layer.backgroundColor = UIColor.clear.cgColor
        self.layer.borderColor = Constants.Color.themeColor.cgColor
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: 0, left: 5, bottom: 0, right: 5)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
}
