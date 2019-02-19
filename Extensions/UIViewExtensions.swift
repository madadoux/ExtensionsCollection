//
//  UIViewExtensions.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 10/8/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit
import Foundation

extension UIView {
    
    func setCardView(view : UIView){
        
        view.layer.cornerRadius = 5.0
        view.layer.borderColor  =  UIColor.clear.cgColor
        view.layer.borderWidth = 5.0
        view.layer.shadowOpacity = 0.5
        view.layer.shadowColor =  UIColor.lightGray.cgColor
        view.layer.shadowRadius = 5.0
        view.layer.shadowOffset = CGSize(width:5, height: 5)
        view.layer.masksToBounds = true
        
    }
}
