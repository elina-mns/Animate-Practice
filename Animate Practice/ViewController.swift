//
//  ViewController.swift
//  Animate Practice
//
//  Created by Elina Mansurova on 2020-11-20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateButton.addTarget(self, action: #selector(animatePressed), for: .touchUpInside)
    }
    
    @objc func animatePressed() {
        let coloredSquare = UIView()
        let size : CGFloat = CGFloat(arc4random_uniform(40))+20
        let yPosition : CGFloat = CGFloat(arc4random_uniform(200))+20
        coloredSquare.backgroundColor = UIColor.blue
        coloredSquare.frame = CGRect(x: 0, y: yPosition, width: size, height: size)
        
        let duration = 1.0
        let delay = 0.0
        let options = UIView.AnimationOptions.curveLinear
        
        self.view.addSubview(coloredSquare)
        UIView.animate(withDuration: duration, delay: delay, options: options, animations: {
            coloredSquare.backgroundColor = UIColor.red
            coloredSquare.frame = CGRect(x: 320-size, y: yPosition, width: size, height: size)
        },
        completion: { animationFinished in
            coloredSquare.removeFromSuperview()
                    
        })
        
    }

}

