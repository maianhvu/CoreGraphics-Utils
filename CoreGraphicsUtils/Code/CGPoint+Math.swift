//
//  CGPoint+Math.swift
//  GameEngine
//
//  Created by Mai Anh Vu on 17/2/18.
//  Copyright © 2018 nus.cs3217.a0127046. All rights reserved.
//

import CoreGraphics

extension CGPoint {

    //-------------------------------------------------------------------------
    // MARK: - Point-point Operations
    //-------------------------------------------------------------------------
    public static func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x + rhs.x,
                       y: lhs.y + rhs.y)
    }

    public static func += (lhs: inout CGPoint, rhs: CGPoint) {
        lhs.x += rhs.x
        lhs.y += rhs.y
    }

    public static prefix func - (point: CGPoint) -> CGPoint {
        return CGPoint(x: -point.x, y: -point.y)
    }

    public static func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return lhs + (-rhs)
    }

    public static func -= (lhs: inout CGPoint, rhs: CGPoint) {
        lhs += -rhs
    }

    //-------------------------------------------------------------------------
    // MARK: - Point-vector Operations
    //-------------------------------------------------------------------------
    public static func + (lhs: CGPoint, rhs: CGVector) -> CGPoint {
        return CGPoint(x: lhs.x + rhs.dx,
                       y: lhs.y + rhs.dy)
    }

    public static func += (lhs: inout CGPoint, rhs: CGVector) {
        lhs.x += rhs.dx
        lhs.y += rhs.dy
    }

    public static func - (lhs: CGPoint, rhs: CGVector) -> CGPoint {
        return lhs + (-rhs)
    }

    public static func -= (lhs: inout CGPoint, rhs: CGVector) {
        lhs += -rhs
    }

    //-------------------------------------------------------------------------
    // MARK: - Point-scalar Operations
    //-------------------------------------------------------------------------
    public static func * (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        return CGPoint(x: lhs.x * rhs,
                       y: lhs.y * rhs)
    }

    public static func *= (lhs: inout CGPoint, rhs: CGFloat) {
        lhs.x *= rhs
        lhs.y *= rhs
    }
}
