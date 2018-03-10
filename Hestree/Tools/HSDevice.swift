//
//  HSDevice.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import Foundation
import UIKit

class HSDevice {
    class func width() -> CGFloat {
        return UIScreen.main.bounds.size.width
    }
    class func height() -> CGFloat {
        return UIScreen.main.bounds.size.height
    }
    class func scale() -> CGFloat {
        return UIScreen.main.scale
    }
    class func stretch() -> CGFloat {
        return UIScreen.main.bounds.size.width/375
    }
}
