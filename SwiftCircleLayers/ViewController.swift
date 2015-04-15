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
        NSNotificationCenter.defaultCenter().addObserverForName(UIApplicationWillEnterForegroundNotification, object:nil, queue:nil, usingBlock: { [unowned self] _ in
            for layer in self.view.layer.sublayers {
                if let circle = layer as? CircleLayer {
                    circle.startPulsing()
                }
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            let radius = CGFloat(25 + (arc4random() % 50))
            let circleLayer = CircleLayer(position: touch.locationInView(view), radius: radius)
            
            view.layer.addSublayer(circleLayer)
        }
        super.touchesBegan(touches, withEvent: event)
    }

}

