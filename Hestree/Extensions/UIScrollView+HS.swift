//
//  UIScrollView+HS.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import UIKit

extension UIScrollView {
    
    var record_isAtTop: Bool {
        
        return contentOffset.y == -contentInset.top
    }
    
    func record_scrollsToTop() {
        
        let topPoint = CGPoint(x: 0, y: -contentInset.top)
        setContentOffset(topPoint, animated: true)
    }
}
