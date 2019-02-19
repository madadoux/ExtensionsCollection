//
//  RoundedUIButton.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 4/19/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit

class RoundedUIButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.layer.cornerRadius = 6
        self.clipsToBounds = true
    }
}
