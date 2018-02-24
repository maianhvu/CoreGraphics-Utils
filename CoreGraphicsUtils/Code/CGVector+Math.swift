//
//  CGVector+Math.swift
//  GameEngine
//
//  Created by Mai Anh Vu on 17/2/18.
//  Copyright © 2018 nus.cs3217.a0127046. All rights reserved.
//

import CoreGraphics

extension CGVector {

    // MARK: - Vector-vector Operations
    public static func + (lhs: CGVector, rhs: CGVector) -> CGVector {
        return CGVector(dx: lhs.dx + rhs.dx,
                       dy: lhs.dy + rhs.dy)
    }

    public static func += (lhs: inout CGVector, rhs: CGVector) {
        lhs.dx += rhs.dx
        lhs.dy += rhs.dy
    }

    public static prefix func - (point: CGVector) -> CGVector {
        return CGVector(dx: -point.dx, dy: -point.dy)
    }

    public static func - (lhs: CGVector, rhs: CGVector) -> CGVector {
        return lhs + (-rhs)
    }

    public static func -= (lhs: inout CGVector, rhs: CGVector) {
        lhs += -rhs
    }

    // MARK: - Vector-scalar Operations
    public static func * (lhs: CGVector, rhs: CGFloat) -> CGVector {
        return CGVector(dx: lhs.dx * rhs,
                        dy: lhs.dy * rhs)
    }

    public static func *= (lhs: inout CGVector, rhs: CGFloat) {
        lhs.dx *= rhs
        lhs.dy *= rhs
    }

    public static func / (lhs: CGFloat, rhs: CGVector) -> CGVector {
        return CGVector(dx: lhs / rhs.dx,
                        dy: lhs / rhs.dy)
    }

    public static func / (lhs: CGVector, rhs: CGFloat) -> CGVector {
        return lhs * (1 / rhs)
    }

    public static func /= (lhs: inout CGVector, rhs: CGFloat) {
        lhs.dx /= rhs
        lhs.dy /= rhs
    }
}
