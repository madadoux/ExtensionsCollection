//
//  UIImageViewExt.swift
//  Raayek
//
//  Created by MacBook Pro on 3/1/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage
extension UIImageView {
    func setImageWithAnimation(_ newImage : UIImage){
        UIView.transition(with: self,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: {
                            DispatchQueue.main.async {
                                self.image = newImage
                            
                            }
        },
                          completion: nil)
    }
    func loadImage(url: URL?) {
        self.sd_setImage(with: url, placeholderImage: #imageLiteral(resourceName: "loginLogo") )
        self.sd_setShowActivityIndicatorView(true)
        self.sd_setIndicatorStyle(.gray)
    }
}
