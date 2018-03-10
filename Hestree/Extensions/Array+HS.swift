//
//  Array+HS.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

extension Array {
    subscript (safe index: Int) -> Element? {
        return index >= 0 && index < count ? self[index] : nil
    }
}
