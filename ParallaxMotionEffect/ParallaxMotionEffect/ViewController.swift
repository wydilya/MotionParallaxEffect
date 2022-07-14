//
//  ViewController.swift
//  ParallaxMotionEffect
//
//  Created by Ilya Zelkin on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyEffect(view: backgroundImage, magnitude: 40)
        applyEffect(view: logoImage, magnitude: -30)
    }

    func applyEffect(view uiView: UIView, magnitude: Double) {
        let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        xMotion.maximumRelativeValue = magnitude
        xMotion.minimumRelativeValue = -magnitude
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        yMotion.maximumRelativeValue = magnitude
        xMotion.minimumRelativeValue = -magnitude
     
        let groupEffect = UIMotionEffectGroup()
        groupEffect.motionEffects = [xMotion, yMotion]
        
        uiView.addMotionEffect(groupEffect)
    }
    
}

