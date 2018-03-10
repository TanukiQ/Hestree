//
//  UIImage+HS.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

extension UIImage {
    class func resized(_ name: String,left: CGFloat,top: CGFloat) -> UIImage {
        let image = UIImage(named: name)
        return (image?.stretchableImage(withLeftCapWidth: Int((image?.size.width)!*left), topCapHeight:Int((image?.size.height)!*top)))!
    }
    
    class func resized(_ name: String) -> UIImage {
        return self.resized(name, left: 0.5, top: 0.5)
    }
}
