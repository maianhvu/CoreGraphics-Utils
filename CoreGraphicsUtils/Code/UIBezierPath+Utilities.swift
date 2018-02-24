//
//  UIBezierPath+Utilities.swift
//  GameEngine
//
//  Created by Mai Anh Vu on 2/20/18.
//  Copyright © 2018 nus.cs3217.a0127046. All rights reserved.
//

import UIKit

extension UIBezierPath {
    public convenience init(vertices: [CGPoint]) {
        self.init()

        vertices.enumerated().forEach { index, point in
            if index == 0 {
                self.move(to: point)
            } else {
                self.addLine(to: point)
            }
        }
        self.close()
    }
}
