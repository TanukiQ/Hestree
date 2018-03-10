//
//  HSPrint.swift
//  Hestree
//
//  Created by TangXu on 2016/11/27.
//  Copyright © 2016年 Tanuki. All rights reserved.
//

import Foundation

func HSPrint<T>(_ message: T, fileName: String = #file, methodName: String =  #function, lineNumber: Int = #line)
{
    #if DEBUG
        let str : String = (fileName as NSString).pathComponents.last!.replacingOccurrences(of: "swift", with: "")
        print("\(str)\(methodName)[\(lineNumber)]:\(message)")
    #endif
}
