//
//  UIProfileImageLink.swift
//  Raayek
//
//  Created by MacBook Pro on 3/11/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import UIKit

class UIProfileImageLink: UIImageLink {
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var model : User?{
        didSet{
            if let url = model?.photoUrl{
                UIImage.fromUrl(url) { [weak self ] (image) in
                    if let image = image {
                        self?.model?.image = image
                        self?.setImageWithAnimation(image)
                    }
                }
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        action = {
            if self.model?.name != nil {
                UIWindow.presentViewControllerGlobally(presenterVC  : UIWindow.rootVC , at: "Profile", with: Keys.SIprofileVC , backBtnBuiltIn: false, onConfigurations : { [weak self]
                navVc , vc in
                if let profileVC = vc as?  VCProfile {
                    VCProfile.model = self?.model
                }
            })
            }
        }
    }
    
}
