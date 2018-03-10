//
//  Date+HS.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

extension Date {
    // 当前时间
    static func now() -> String? {
        let formatter = HSDateFormatterManager.sharedManager
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.string(from: Date())
    }
    
    // date->String
    static func toString(_ date: Date) -> String? {
        let formatter = HSDateFormatterManager.sharedManager
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.string(from: date)
    }
    
    static func dateFromString(_ dateString: String, withFormat dateFormat: String) -> Date {
        let dateFormatter = HSDateFormatterManager.sharedManager
        dateFormatter.dateFormat = dateFormat
        if let date = dateFormatter.date(from: dateString) {
            return date
        } else {
            return Date()
        }
    }
}
