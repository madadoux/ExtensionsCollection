//
//  DropDownMenuButton.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 5/9/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit

class DropDownMenuButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.setTitleColor(Constants.Color.defaultPlaceHolderTextColor, for: .normal)
        self.contentEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        

    }
    
    override func draw(_ rect: CGRect) {

        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderWidth = width
        border.borderColor = Constants.Color.themeColor.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        
        // Place the drop down image on the right side

       
        
        if L102Language.currentAppleLanguage()=="ar" {
            self.contentHorizontalAlignment = .right
            let arrowImageWidth = Constants.Util.dropDownArrowImageWidth
            let arrowImageHeight = Constants.Util.dropDownArrowImageHeight
            let arrowImageView = UIImageView(image: UIImage(named: "dropDownButtonDownArrow"))
            arrowImageView.frame = CGRect(x: arrowImageWidth, y: self.frame.height / 2.0  - arrowImageHeight / 2.0, width: arrowImageWidth, height: arrowImageHeight)
            arrowImageView.contentMode = .scaleAspectFit
            self.addSubview(arrowImageView)
            
            
        } else if L102Language.currentAppleLanguage()=="en" {
            self.contentHorizontalAlignment = .left
            let arrowImageWidth = Constants.Util.dropDownArrowImageWidth
            let arrowImageHeight = Constants.Util.dropDownArrowImageHeight
            let arrowImageView = UIImageView(image: UIImage(named: "dropDownButtonDownArrow"))
            arrowImageView.frame = CGRect(x: self.frame.width - arrowImageWidth, y: self.frame.height / 2.0  - arrowImageHeight / 2.0, width: arrowImageWidth, height: arrowImageHeight)
            arrowImageView.contentMode = .scaleAspectFit
            self.addSubview(arrowImageView)
        }
    }
    
    // MARK: Utility Methods
    
    // This method should be called inside viewDidLayoutSubview of the view controller that contains the drop down button so that the drop down button has it's width updated based on the constraints.
    func updateLineWidth() {
        self.setNeedsDisplay()
    }
    
    
    
    
    
    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)!
//        
//        let bottomBorder: CALayer = CALayer()
//        bottomBorder.borderColor = Constants.Color.themeColor.cgColor
//        bottomBorder.borderWidth = 1
//        bottomBorder.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width, height: 1)
//        self.layer.addSublayer(bottomBorder)
//        
//        self.contentHorizontalAlignment = .left
//        
//        self.setTitleColor(Constants.Color.defaultPlaceHolderTextColor, for: .normal)
//        
//        // Place the drop down image on the right side
//        let arrowImageWidth = Constants.Util.dropDownArrowImageWidth
//        let arrowImageHeight = Constants.Util.dropDownArrowImageHeight
//        let arrowImageView = UIImageView(image: UIImage(named: "dropDownButtonDownArrow"))
//        arrowImageView.frame = CGRect(x: self.frame.width - arrowImageWidth, y: self.frame.height / 2.0  - arrowImageHeight / 2.0, width: arrowImageWidth, height: arrowImageHeight)
//        arrowImageView.contentMode = .scaleAspectFit
//        self.addSubview(arrowImageView)
//        
//        self.contentEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
//        
////        self.semanticContentAttribute = .forceRightToLeft
////        self.imageView?.contentMode = .scaleAspectFit
////        self.imageEdgeInsets = UIEdgeInsetsMake(6, 6, 6, 6)
////        self.setImage(#imageLiteral(resourceName: "dropDownButtonDownArrow"), for: .normal)
//    }
//    
//    func updateLineWidth() {
//        // TODO: Call this method from everywhere were we use a DropDownMenuButton to set the width of the underline properly. And I think we should add the arrow image here so it has the appropriate position.
//        let bottomBorder: CALayer = CALayer()
//        bottomBorder.borderColor = Constants.Color.themeColor.cgColor
//        bottomBorder.borderWidth = 1
//        bottomBorder.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width, height: 1)
//        self.layer.addSublayer(bottomBorder)
//    }
}

//class DropDownMenuButton: UIButton {
//    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        
//        let view = UIView()
//        
//        self.setTitleColor(Constants.Color.themeColor, for: .normal)
//        view.backgroundColor = Constants.Color.themeColor
//        
//        view.translatesAutoresizingMaskIntoConstraints = false
//        addSubview(view)
//        
//        view.addConstraint(NSLayoutConstraint(
//            item: view,
//            attribute: .height,
//            relatedBy: .equal,
//            toItem: nil,
//            attribute: .height,
//            multiplier: 1,
//            constant: 1
//            )
//        )
//        
//        addConstraint(NSLayoutConstraint(
//            item: view,
//            attribute: .left,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .left,
//            multiplier: 1,
//            constant: 0
//            )
//        )
//        
//        addConstraint(NSLayoutConstraint(
//            item: view,
//            attribute: .right,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .right,
//            multiplier: 1,
//            constant: 0
//            )
//        )
//        
//        addConstraint(NSLayoutConstraint(
//            item: view,
//            attribute: .bottom,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .bottom,
//            multiplier: 1,
//            constant: 0
//            )
//        )
//    }
//    
//}
