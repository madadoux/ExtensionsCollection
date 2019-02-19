//
//  UITextFieldExtensions.swift
//  MedicalServices
//
//  Created by Amr Mahmoud on 10/22/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import Foundation
import UIKit
extension UITextField {
    var isReallyEmpty: Bool {
        return true
        
        //stringByTrimmingCharactersInSet(.whitespaceAndNewlineCharacterSet()).isEmpty ?? true
    }
    func forceTextAlignmentOnLanguage () {
        
        if(L102Language.currentLanguage() == .en )
        {
            self.textAlignment  = NSTextAlignment.left ;
            self.semanticContentAttribute = UISemanticContentAttribute.forceLeftToRight ;
        }
        else
        {
            self.textAlignment = NSTextAlignment.right;
            self.semanticContentAttribute = UISemanticContentAttribute.forceRightToLeft;
        }
    }

}
