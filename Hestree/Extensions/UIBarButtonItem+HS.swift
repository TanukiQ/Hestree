//
//  UIBarButtonItem+HS.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    class func itemWithParams(_ normal: String,higlighted: String,target: AnyObject?,action: Selector) -> UIBarButtonItem {
        
        let item = UIButton(type: .custom)
        
        let normalImage = UIImage(named: normal)
        item.setBackgroundImage(normalImage, for: UIControlState())
        item.setBackgroundImage(UIImage(named: higlighted), for: .highlighted)
        
        item.bounds = CGRect(x: 0, y: 0, width: (normalImage?.size.width)!, height: (normalImage?.size.height)!)
        
        item.addTarget(target, action: action, for: .touchUpInside)
        
        return UIBarButtonItem(customView: item)
    }
}
