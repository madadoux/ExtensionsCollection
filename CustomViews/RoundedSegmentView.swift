//
//  RoundedSegmentView.swift
//  Raayek
//
//  Created by MacBook Pro on 2/20/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class RoundedSegmentedControl : UISegmentedControl
{
    @IBInspectable var borderRaduisPresentage:CGFloat = 0.5{
        didSet{
            updateUI()
        }
    }
    fileprivate func updateUI() {
        layer.cornerRadius = borderRaduisPresentage * frame.height
        layer.borderWidth = 1.0
        layer.masksToBounds = true
        layer.borderColor = UIColor.white.cgColor
    }
    
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
    
    override init(items: [Any]?) {
        super.init(items: items)
    }
}
