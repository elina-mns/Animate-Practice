//
//  SecondViewController.swift
//  Animate Practice
//
//  Created by Elina Mansurova on 2020-11-20.
//

import UIKit

class SecondViewController: UIViewController {
    
    let container = UIView()
    let blueSquare = UIView()
    let yellowSquare = UIView()

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var animateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateButton.addTarget(self, action: #selector(animatePressed), for: .touchUpInside)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        view.addSubview(container)
        
        yellowSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        blueSquare.frame = yellowSquare.frame
        
        yellowSquare.backgroundColor = UIColor.yellow
        blueSquare.backgroundColor = UIColor.blue
        
        container.addSubview(yellowSquare)
    }
    
    @objc func goBack() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func animatePressed() {
        
        let fullRotation = CGFloat(Double.pi * 2)
        let duration = 2.0
        let delay = 0.0
        let options = UIView.KeyframeAnimationOptions.calculationModeLinear
        
        UIView.animateKeyframes(withDuration: duration, delay: delay, options: options, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/3, animations: {
                // start at 0.00s (5s × 0)
                // duration 1.67s (5s × 1/3)
                // end at   1.67s (0.00s + 1.67s)
                self.yellowSquare.transform = CGAffineTransform(rotationAngle: 1/3 * fullRotation)
            })
            UIView.addKeyframe(withRelativeStartTime: 1/3, relativeDuration: 1/3, animations: {
                self.yellowSquare.transform = CGAffineTransform(rotationAngle: 2/3 * fullRotation)
            })
            UIView.addKeyframe(withRelativeStartTime: 2/3, relativeDuration: 1/3, animations: {
                self.yellowSquare.transform = CGAffineTransform(rotationAngle: 3/3 * fullRotation)
            })
            
        }, completion: {finished in
            // any code entered here will be applied
            // once the animation has completed
            
        })
    }
}


