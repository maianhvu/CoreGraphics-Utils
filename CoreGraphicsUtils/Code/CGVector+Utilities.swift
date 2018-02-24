//
//  CGVector+Utilities.swift
//  GameEngine
//
//  Created by Mai Anh Vu on 17/2/18.
//  Copyright © 2018 nus.cs3217.a0127046. All rights reserved.
//

import CoreGraphics

extension CGVector {
    public init(point: CGPoint) {
        self.init(dx: point.x, dy: point.y)
    }

    public var point: CGPoint {
        return CGPoint(x: dx, y: dy)
    }

    public var squaredNorm: CGFloat {
        return dx * dx + dy * dy
    }

    public var length: CGFloat {
        return sqrt(squaredNorm)
    }

    public var angle: CGFloat {
        return atan2(-dy, -dx)
    }

    public var unit: CGVector {
        return self / length
    }

    public func with(length: CGFloat) -> CGVector {
        return self * length / self.length
    }

    public static func unit(of angle: CGFloat) -> CGVector {
        return CGVector(dx: -cos(angle),
                        dy: -sin(angle))
    }

    public var orthogonal: CGVector {
        return CGVector(dx: dy, dy: -dx)
    }
}
