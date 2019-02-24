//
//  UIAlertActionWithId.swift
//  Raayek
//
//  Created by MacBook Pro on 2/22/18.
//  Copyright © 2018 mohamed saeed. All rights reserved.
//

import UIKit

class UIAlertActionWithId: UIAlertAction {
    var identifier : String?
    convenience init(id: String? ,title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction)->Void)?) {
        self.init(title: title, style: style, handler: handler)
        identifier = id
    }
}
