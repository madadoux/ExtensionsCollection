//
//  UIViewControllerExt.swift
//  MedicalServices
//
//  Created by dsada on 8/29/18.
//  Copyright © 2018 ITG. All rights reserved.
//

import Foundation


extension UIViewController{
    
    public func showNoInternetConnection()  {
        let viewtag = 45212
        let customView = UIView()
        let label = UILabel()
        if !AppDelegate.isConnectedToInternet {
            
            let w = UIScreen.main.bounds.width
            let h = UIScreen.main.bounds.height
            
            customView.isHidden = false
            customView.frame = CGRect.init(x: 0, y: 0, width: w, height: h)
            customView.backgroundColor = UIColor.white
            label.frame = CGRect(x: 0, y: h/2, width: w, height: 20)
            label.textAlignment = NSTextAlignment.center
            label.text =  NSLocalizedString("No Internet Connection!", comment: "A message to be shown when there is no connection available")
            label.textColor = UIColor.black
            customView.tag = viewtag
            customView.addSubview(label)
            self.view.addSubview(customView)
            // self.isConnectionDialogPresented = true
        } else {
            self.view.viewWithTag(viewtag)?.isHidden = true
            self.view.viewWithTag(viewtag)?.removeFromSuperview()
            //self.isConnectionDialogPresented = false
        }
    }
    
}
