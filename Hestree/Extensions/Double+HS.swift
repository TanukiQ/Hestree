//
//  Double+HS.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import Foundation

extension Double {
    func format(_ f: String) -> String {
        return NSString(format: "%\(f)f" as NSString, self) as String
    }
}
