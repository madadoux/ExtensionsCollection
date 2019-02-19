//
//  UnderlinedUITextField.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 4/19/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class UnderlinedUITextField: SkyFloatingLabelTextField {
    
//    let padding = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)!
//        
//        self.borderStyle = .none
//    }
//    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.toolbarPlaceholder = toolbarPlaceholder?.localized
        self.placeholder = self.placeholder?.localized
        self.placeholderText = self.placeholderText?.localized
    }
    var userSelectedTitleColor = Constants.Color.themeColor
    var userSelectedLineColor = Constants.Color.themeColor
    
    override func draw(_ rect: CGRect) {
        
        self.selectedTitleColor = self.userSelectedTitleColor
        self.selectedLineColor = self.userSelectedLineColor
        
        if(L102Language.currentAppleLanguage()=="ar")
        {
            self.textAlignment = .right
            self.titleLabel.textAlignment = .right

        }
        else
        {
            self.textAlignment = .left
            self.titleLabel.textAlignment = .left

        }
//        let border = CALayer()
//        let width = CGFloat(1.0)
//        border.borderWidth = width
//        border.borderColor = Constants.Color.themeColor.cgColor
//        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
//        
//        self.layer.addSublayer(border)
//        self.layer.masksToBounds = true
    }
//
//    override func textRect(forBounds bounds: CGRect) -> CGRect {
//        return UIEdgeInsetsInsetRect(bounds, padding)
//    }
//    
//    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
//        return UIEdgeInsetsInsetRect(bounds, padding)
//    }
//    
//    override func editingRect(forBounds bounds: CGRect) -> CGRect {
//        return UIEdgeInsetsInsetRect(bounds, padding)
//    }

    // MARK: Utility Methods
    
    // This method should be called inside viewDidLayoutSubview of the view controller that contains the text field so that the text field has it's width updated based on the constraints.
    func updateLineWidth() {
//        self.setNeedsDisplay()
    }
    
    
    
//    let padding = UIEdgeInsets(top: 10, left: 0, bottom: 5, right: 0)
//
//    required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)!
//        
//        self.borderStyle = .none
////        self.layer.backgroundColor = UIColor.white.cgColor
//        
////        let bottomBorder: CALayer = CALayer()
////        bottomBorder.borderColor = Constants.Color.themeColor.cgColor
////        bottomBorder.borderWidth = 1
////        // To set the width of the underline properly, the following line should be called after the view is rendered on the screen.
////        bottomBorder.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width, height: 1)
////        self.layer.addSublayer(bottomBorder)
//        
////        self.layer.masksToBounds = false
////        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
////        self.layer.shadowOpacity = 1.0
////        self.layer.shadowRadius = 0.0
//    }
//    
//    override func textRect(forBounds bounds: CGRect) -> CGRect {
//        return UIEdgeInsetsInsetRect(bounds, padding)
//    }
//    
//    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
//        return UIEdgeInsetsInsetRect(bounds, padding)
//    }
//    
//    override func editingRect(forBounds bounds: CGRect) -> CGRect {
//        return UIEdgeInsetsInsetRect(bounds, padding)
//    }
//
////    override func didMoveToSuperview() {
////        print("*#* width: didMoveToSuperview: ", self.frame.width)
////        self.updateLineWidth()
////    }
//    
//    // We needed this method because when we use autolayout the width of the text field changes after being drawn on the screen, so we need to update the width of the line based on the new width.
//    // It should be called inside viewDidLayoutSubviews.
//    func updateLineWidth() {
//        
//        print("*#* width: ", self.frame.width)
//        
//        let bottomBorder: CALayer = CALayer()
//        bottomBorder.borderColor = Constants.Color.themeColor.cgColor
//        bottomBorder.borderWidth = 1
//        bottomBorder.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width, height: 1)
//        self.layer.addSublayer(bottomBorder)
//
//    }
    
}
