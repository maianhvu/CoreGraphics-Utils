//
//  CGPoint+Utilities.swift
//  GameEngine
//
//  Created by Mai Anh Vu on 17/2/18.
//  Copyright © 2018 nus.cs3217.a0127046. All rights reserved.
//

import CoreGraphics

extension CGPoint {
    init(vector: CGVector) {
        self.init(x: vector.dx, y: vector.dy)
    }

    var vector: CGVector {
        return CGVector(dx: x, dy: y)
    }
}
