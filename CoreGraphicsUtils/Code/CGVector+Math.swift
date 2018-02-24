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
    static func + (lhs: CGVector, rhs: CGVector) -> CGVector {
        return CGVector(dx: lhs.dx + rhs.dx,
                       dy: lhs.dy + rhs.dy)
    }

    static func += (lhs: inout CGVector, rhs: CGVector) {
        lhs.dx += rhs.dx
        lhs.dy += rhs.dy
    }

    static prefix func - (point: CGVector) -> CGVector {
        return CGVector(dx: -point.dx, dy: -point.dy)
    }

    static func - (lhs: CGVector, rhs: CGVector) -> CGVector {
        return lhs + (-rhs)
    }

    static func -= (lhs: inout CGVector, rhs: CGVector) {
        lhs += -rhs
    }

    // MARK: - Vector-scalar Operations
    static func * (lhs: CGVector, rhs: CGFloat) -> CGVector {
        return CGVector(dx: lhs.dx * rhs,
                        dy: lhs.dy * rhs)
    }

    static func *= (lhs: inout CGVector, rhs: CGFloat) {
        lhs.dx *= rhs
        lhs.dy *= rhs
    }

    static func / (lhs: CGFloat, rhs: CGVector) -> CGVector {
        return CGVector(dx: lhs / rhs.dx,
                        dy: lhs / rhs.dy)
    }

    static func / (lhs: CGVector, rhs: CGFloat) -> CGVector {
        return lhs * (1 / rhs)
    }

    static func /= (lhs: inout CGVector, rhs: CGFloat) {
        lhs.dx /= rhs
        lhs.dy /= rhs
    }
}
