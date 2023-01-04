//
//  Constant+Extension.swift
//  SaaSSchool
//
//  Created by 朱𣇈丹 on 2023/1/3.
//  Copyright © 2023 青豆教育. All rights reserved.
//

import Foundation

extension CGFloat {
    
    //字体
    public func fontAuto() -> CGFloat {
        return tRealFontSize(self)
    }
    
    //约束
    public func auto() -> CGFloat {
        return tesAuto(self)
    }
    
}

extension Int {
    
    //字体
    public func fontAuto() -> CGFloat {
        return tRealFontSize(CGFloat(self))
    }
    
    //约束
    public func auto() -> CGFloat {
        return tesAuto(CGFloat(self))
    }
    
}
