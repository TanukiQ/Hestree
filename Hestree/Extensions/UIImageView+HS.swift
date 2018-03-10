//
//  UIImageView+HS.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

extension UIImageView {
    class func image(_ name: String,mode: UIViewContentMode) -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: name))
        imageView.contentMode = mode
        return imageView
    }
}
