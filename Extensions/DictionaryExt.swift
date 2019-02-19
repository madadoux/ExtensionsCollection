//
//  DictionaryExt.swift
//  MedicalServices
//
//  Created by Mmustafa on 7/15/18.
//  Copyright © 2018 ITG. All rights reserved.
//

import Foundation
extension Dictionary where Value: Equatable {
    func someKey(forValue val: Value) -> Key? {
        return first(where: { $1 == val })?.key
    }
}
