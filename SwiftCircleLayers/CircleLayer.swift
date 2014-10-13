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
        self.frame = CGRectMake(position.x, position.y, radius*2, radius*2)
        self.masksToBounds = true
        self.cornerRadius = radius
        self.borderWidth = 3
        self.backgroundColor = UIColor(hue: 0.65, saturation: 0.7, brightness: 0.6, alpha: 0.1).CGColor
        self.borderColor = UIColor(hue: 0.65, saturation: 0.8, brightness: 0.5, alpha: 0.15).CGColor
        
        startPulsing()
    }
    
    func startPulsing() {
        let anim = CABasicAnimation(keyPath: "transform")
        anim.toValue = NSValue(CATransform3D:CATransform3DMakeScale(0.6, 0.6, 1))
        anim.duration = 0.5
        anim.autoreverses = true
        anim.repeatCount = HUGE
        self.addAnimation(anim, forKey: "pulsate")
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
