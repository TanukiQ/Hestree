//
//  UIColor+HS.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

extension UIColor {
    /** 整体背景颜色 */
    class func HSnormalColor() -> UIColor {
        return UIColor(red: 36.0/255.0, green: 38.0/255.0, blue: 51.0/255.0, alpha: 1.0)
    }
    /** 蓝色 */
    class func HSBlueColor() -> UIColor {
        return UIColor(red: 81.0/255.0, green: 184.0/255.0, blue: 234.0/255.0, alpha: 1.0)
    }
    
    class func HSHalfWhiteColor() -> UIColor {
        return UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.5)
    }
}
