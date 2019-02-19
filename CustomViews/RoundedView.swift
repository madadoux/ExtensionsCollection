//
//  RoundedView.swift
//  Raayek
//
//  Created by mohamed saeed on 1/29/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import UIKit

class RoundedView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
   /* override func draw(_ rect: CGRect) {
        // Drawing code
        layer.cornerRadius = 20.0
    }*/
    @IBInspectable var isCornererRaduisRTH:Bool = false
    @IBInspectable var raduisPresentRTH : CGFloat = 0.1
    @IBInspectable var radius :CGFloat = 10
    @IBInspectable var topLeft:Bool = true
    @IBInspectable var bottomLeft : Bool = true
    @IBInspectable var bottomRight: Bool = true
    @IBInspectable var topRight :  Bool = true
    
    fileprivate func updateCalculations() {
        var rad : CGFloat = 0
        if (isCornererRaduisRTH){
            rad =  frame.height  * raduisPresentRTH
        }
        else {
            rad = radius
        }
        
        var cornerArrays = UIRectCorner()
        if L102Language.currentAppleLanguage() == "ar" {
            if topLeft && !topRight {
                topRight = true
                topLeft = false
            }
            if bottomLeft && !bottomRight {
                bottomRight = true
                bottomLeft = false
            }
        }
        if topLeft {
            cornerArrays.insert(.topLeft)
        }
        if topRight {
            cornerArrays.insert(.topRight)
        }
        if bottomRight {
            cornerArrays.insert(.bottomRight)
        }
        if bottomLeft {
            cornerArrays.insert(.bottomLeft)
        }
        roundCorners( cornerArrays, radius: rad )
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateCalculations()
        //clipsToBounds = true
        //layer.masksToBounds = true

    }
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        updateCalculations()
        //clipsToBounds = true
        //layer.masksToBounds = true
    }
    
    @IBInspectable var shadowOffset: CGSize{
        get{
            return self.layer.shadowOffset
        }
        set{
            if L102Language.currentAppleLanguage() == "ar" {
                var adjustedVal = newValue
                adjustedVal.width = -adjustedVal.width
                self.layer.shadowOffset = adjustedVal
            }
        }
    }
    
    @IBInspectable var shadowColor: UIColor{
        get{
            return UIColor(cgColor: self.layer.shadowColor!)
        }
        set{
            self.layer.shadowColor = newValue.cgColor
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat{
        get{
            return self.layer.shadowRadius
        }
        set{
            self.layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable var shadowOpacity: Float{
        get{
            return self.layer.shadowOpacity
        }
        set{
            self.layer.shadowOpacity = newValue
        }
    }
}


class BorderView: RoundedView
{
    @IBInspectable var borderColor : UIColor = UIColor.white
    @IBInspectable var borderWidth : CGFloat = 1.0
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.clear
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        clipsToBounds = true
    }
}


class GradiantView : UIView{
    
    @IBInspectable var borderRadiusPresentage : CGFloat = 0.5
    @IBInspectable var color1:UIColor = UIColor.white
    @IBInspectable var color2:UIColor = UIColor.blue
    @IBInspectable var startPoint:CGPoint = CGPoint.zero
    @IBInspectable var endpoint:CGPoint = CGPoint(x:1 , y:0)
    @IBInspectable var gradiantInsectBy:CGPoint = CGPoint(x:1 , y:1)
    let gradient = CAGradientLayer()
    override func awakeFromNib() {
        super.awakeFromNib()
       
        layer.cornerRadius = borderRadiusPresentage * frame.height
        layer.borderWidth = 0
        backgroundColor = UIColor.clear
        gradient.frame = bounds.insetBy(dx: gradiantInsectBy.x, dy: gradiantInsectBy.y)
        gradient.colors = [color1.cgColor, color2.cgColor]
        gradient.cornerRadius = layer.cornerRadius
        gradient.startPoint = startPoint
        gradient.endPoint = endpoint
        gradient.borderWidth = 0
        layer.insertSublayer(gradient, at: 0)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds.insetBy(dx: 1, dy: 1)
    }
}
