//
//  CGRect+Utilities.swift
//  GameEngine
//
//  Created by Mai Anh Vu on 17/2/18.
//  Copyright © 2018 nus.cs3217.a0127046. All rights reserved.
//

import CoreGraphics

extension CGRect {
    init(center: CGPoint, radius: CGFloat) {
        self.init(x: center.x - radius,
                  y: center.y - radius,
                  width: radius * 2,
                  height: radius * 2)
    }

    var center: CGPoint {
        return CGPoint(x: midX, y: midY)
    }
}
