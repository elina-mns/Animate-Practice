//
//  ThirdViewController.swift
//  Animate Practice
//
//  Created by Elina Mansurova on 2020-11-23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var animateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateButton.addTarget(self, action: #selector(animatePressed), for: .touchUpInside)

    }
    
    @objc func animatePressed() {
        for _ in 0...6 {
            let blackSquare = UIView()
            blackSquare.backgroundColor = .black
            blackSquare.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
            blackSquare.makeCircular()
            self.view.addSubview(blackSquare)
            let randomYOffset = CGFloat( arc4random_uniform(150))
            
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 16, y: 239 + randomYOffset))
            path.addCurve(to: CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
            
            let animation = CAKeyframeAnimation(keyPath: "position")
            animation.path = path.cgPath
            animation.rotationMode = CAAnimationRotationMode.rotateAuto
            animation.repeatCount = Float.infinity
            animation.duration = Double(arc4random_uniform(40)+30) / 10
            animation.timeOffset = Double(arc4random_uniform(290))
            
            blackSquare.layer.add(animation, forKey: "animate the position along path")
        }
    }
}
