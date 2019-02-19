//
//  CheckBox.swift
//  MedicalServices
//
//  Created by Nayra Ahmed on 4/18/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit
import Foundation
class CheckBox: UIButton {
    // Images
    @IBInspectable  var  checkedImage : UIImage! = UIImage(named: "ic_check_box")! as UIImage
    @IBInspectable  var  uncheckedImage : UIImage! = UIImage(named: "ic_check_box_outline_blank")! as UIImage
    
    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: .normal)
            } else {
                self.setImage(uncheckedImage, for: .normal)
            }
        }
    }
    
    var section : Int?
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(self.buttonClicked(sender:)), for: UIControlEvents.touchUpInside)
        self.isChecked = false
    }
    func toggle() {
        isChecked = !isChecked
    }
    func buttonClicked(sender: UIButton!) {
        if sender == self {
            toggle()
            onValueChanged?(self)
        }
    }
    func simulateBtnClick() {
        buttonClicked(sender: self)
    }
    var onValueChanged : ((CheckBox)->Void)?
}
