//
//  PrefixReplaceStringExtention.swift
//  MedicalServices
//
//  Created by Mahmoud Shiekh on 4/26/18.
//  Copyright © 2018 ITG. All rights reserved.
//

import Foundation
public extension String {
    func replacePrefix(prefix: String, replacement: String) -> String {
        if hasPrefix(prefix) {
            return replacement + substring(from: prefix.endIndex)
        }
        else {
            return self
        }
    }
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}
