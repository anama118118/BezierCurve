//
//  CoolView.swift
//  BezierCurve
//
//  Created by Ana Ma on 3/28/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

//Tools to get point
//http://www.victoriakirst.com/beziertool/
//How to make a star with Bezier Star
//http://stackoverflow.com/questions/38343458/how-to-make-star-shape-with-bezier-path-in-ios
@IBDesignable class CoolStarView: UIView {
    
    @IBInspectable var fillColor: UIColor = UIColor.gray
    @IBInspectable var points: Int =  5
    
    override func draw(_ rect: CGRect) {
        let starPath = starPathInRect(rect: rect)
        UIColor.gray.setStroke()
        starPath.stroke()
        fillColor.setFill()
        
        starPath.fill()
    }
    
    func starPathInRect(rect: CGRect) -> UIBezierPath {
        let path = UIBezierPath()
        let starExtrusion:CGFloat = 30.0
        let center = CGPoint(x: rect.width / 2.0, y: rect.height / 2.0)
        let pointsOnStar = points
        
        var angle:CGFloat = -CGFloat(M_PI / 2.0)
        let angleIncrement = CGFloat(M_PI * 2.0 / Double(pointsOnStar))
        let radius = rect.width / 2.0
        
        var firstPoint = true
        
        for _ in 1...pointsOnStar {
            
            let point = pointFrom(angle: angle, radius: radius, offset: center)
            let nextPoint = pointFrom(angle: angle + angleIncrement, radius: radius, offset: center)
            let midPoint = pointFrom(angle: angle + angleIncrement / 2.0, radius: starExtrusion, offset: center)
            
            if firstPoint {
                firstPoint = false
                path.move(to: point)
            }
            
            path.addLine(to: midPoint)
            path.addLine(to: nextPoint)
            
            angle += angleIncrement
        }
        
        path.close()
        
        return path
    }
    
    func pointFrom(angle: CGFloat, radius: CGFloat, offset: CGPoint) -> CGPoint {
        return CGPoint(x: radius * cos(angle) + offset.x, y: radius * sin(angle) + offset.y)
    }
    
}

