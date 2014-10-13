//
//  ViewController.swift
//  SwiftCircleLayers
//
//  Created by Alan Skipp on 13/10/2014.
//  Copyright (c) 2014 Alan Skipp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch in touches {
            let circleCenter = touch.locationInView(view)
            let radius = CGFloat(25 + (arc4random() % 50))
            
            let circleLayer = CircleLayer(position: CGPoint(x: circleCenter.x-radius, y: circleCenter.y-radius), radius: radius)
            
            view.layer.addSublayer(circleLayer)
        }
    }
}

