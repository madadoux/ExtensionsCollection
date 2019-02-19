//
//  ArabicEnglishStringExtention.swift
//  MedicalServices
//
//  Created by Mahmoud Shiekh on 3/27/18.
//  Copyright © 2018 ITG. All rights reserved.
//

import Foundation
public extension String {
    
    // mapping numbers for arabic and am _ pm 
    
    public var replacedArabicDigitsWithEnglishForDates: String {
        var str = self
        let map = ["٠": "0",
                   "١": "1",
                   "٢": "2",
                   "٣": "3",
                   "٤": "4",
                   "٥": "5",
                   "٦": "6",
                   "٧": "7",
                   "٨": "8",
                   "٩": "9",
                   "ص": "am",
                   "م": "pm",
                   
                   ]
        map.forEach { str = str.replacingOccurrences(of: $0, with: $1) }
        return str
    }
    public var replacedArabicDigitsWithEnglish: String {
        var str = self
        let map = ["٠": "0",
                   "١": "1",
                   "٢": "2",
                   "٣": "3",
                   "٤": "4",
                   "٥": "5",
                   "٦": "6",
                   "٧": "7",
                   "٨": "8",
                   "٩": "9"
            
        ]
        map.forEach { str = str.replacingOccurrences(of: $0, with: $1) }
        return str
    }
}
