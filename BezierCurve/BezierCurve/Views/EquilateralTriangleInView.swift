//
//  EquilateralTriangleInView.swift
//  BezierCurve
//
//  Created by Ana Ma on 4/7/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

@IBDesignable class EquilateralTriangleInView: UIView {
    @IBInspectable var lineWidth: CGFloat = 3.0
    @IBInspectable var numberOfAngles: Int = 5 {
        didSet {
            self.layer.setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let heightOfView = self.bounds.height
        let widthOfView = self.bounds.width
        
        let maxHeightXOfTriangle = heightOfView / sqrt(3)
        let maxWidthXOfTriangle = widthOfView / 2
        let maxXRatioPossibleOfTriangle = min(maxHeightXOfTriangle, maxWidthXOfTriangle)
        
        var angle: CGFloat = -CGFloat(M_PI / 2.0)
        let angleIncrement = CGFloat(M_PI * 2.0 / Double(numberOfAngles))
        let radius: CGFloat = maxXRatioPossibleOfTriangle / 2
        
        var firstPoint = true
        
        let path = UIBezierPath()
        path.lineWidth = lineWidth
        
        for _ in 1...numberOfAngles {
            let point = pointFrom(angle: angle, radius: radius, offset: center)
            let nextPoint = pointFrom(angle: angle + angleIncrement, radius: radius, offset: center)
            
            if firstPoint {
                firstPoint = false
                path.move(to: point)
            }
            path.addLine(to: nextPoint)
            angle += angleIncrement
        }
        
        path.close()
        UIColor.black.setStroke()
        path.stroke()
        UIColor.gray.setFill()
        path.fill()
        
        let mask: CAShapeLayer = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    func pointFrom(angle: CGFloat, radius: CGFloat, offset: CGPoint) -> CGPoint {
        return CGPoint(x: radius * cos(angle) + offset.x, y: radius * sin(angle) + offset.y)
    }
}

