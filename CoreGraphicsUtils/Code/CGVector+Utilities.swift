//
//  CGVector+Utilities.swift
//  GameEngine
//
//  Created by Mai Anh Vu on 17/2/18.
//  Copyright © 2018 nus.cs3217.a0127046. All rights reserved.
//

import CoreGraphics

extension CGVector {
    init(point: CGPoint) {
        self.init(dx: point.x, dy: point.y)
    }

    var point: CGPoint {
        return CGPoint(x: dx, y: dy)
    }

    var squaredNorm: CGFloat {
        return dx * dx + dy * dy
    }

    var length: CGFloat {
        return sqrt(squaredNorm)
    }

    var angle: CGFloat {
        return atan2(-dy, -dx)
    }

    var unit: CGVector {
        return self / length
    }

    func with(length: CGFloat) -> CGVector {
        return self * length / self.length
    }

    static func unit(of angle: CGFloat) -> CGVector {
        return CGVector(dx: -cos(angle),
                        dy: -sin(angle))
    }

    var orthogonal: CGVector {
        return CGVector(dx: dy, dy: -dx)
    }
}
