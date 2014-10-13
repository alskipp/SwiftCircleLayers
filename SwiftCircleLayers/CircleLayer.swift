//
//  CircleLayer.swift
//  SwiftCircleLayers
//
//  Created by Alan Skipp on 13/10/2014.
//  Copyright (c) 2014 Alan Skipp. All rights reserved.
//

import UIKit

class CircleLayer: CALayer {

    init(position:CGPoint, radius:CGFloat) {
        super.init()
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.position = position
        bounds = CGRect(x: 0, y: 0, width: radius*2, height: radius*2)
        masksToBounds = true
        cornerRadius = radius
        borderWidth = 3
        backgroundColor = UIColor(hue: 0.65, saturation: 0.7, brightness: 0.6, alpha: 0.1).CGColor
        borderColor = UIColor(hue: 0.65, saturation: 0.8, brightness: 0.5, alpha: 0.15).CGColor
        
        startPulsing()
    }
    
    func startPulsing() {
        let anim = CABasicAnimation(keyPath: "transform")
        anim.toValue = NSValue(CATransform3D:CATransform3DMakeScale(0.6, 0.6, 1))
        anim.duration = 0.5
        anim.autoreverses = true
        anim.repeatCount = HUGE
        addAnimation(anim, forKey: "pulsate")
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
