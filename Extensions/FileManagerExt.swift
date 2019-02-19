//
//  FileManagerExt.swift
//  MedicalServices
//
//  Created by mhmohamed on 9/16/18.
//  Copyright © 2018 ITG. All rights reserved.
//

import Foundation
extension FileManager {
  static func saveToDocuments(image: UIImage) throws -> URL
    {
        let imageFolder = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let imageURL = imageFolder.appendingPathComponent("\(UUID()).jpg")
        let jpegData = UIImageJPEGRepresentation(image, 0.5)
        try jpegData?.write(to: imageURL, options: .atomic)
        return imageURL
    }
}
