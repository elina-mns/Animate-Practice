//
//  ViewController.swift
//  Animate Practice
//
//  Created by Elina Mansurova on 2020-11-20.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var animateButton: UIButton!
    
    @IBOutlet weak var numberOfSquares: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateButton.addTarget(self, action: #selector(animatePressed), for: .touchUpInside)
    }

    
    @objc func animatePressed() {
        let squares = Int(self.numberOfSquares.value)
        
        for _ in 0...squares {
        
            let duration = Double(arc4random_uniform(40)+30) / 10
            let delay = TimeInterval(900 + arc4random_uniform(100)) / 1000
            let options = UIView.AnimationOptions.curveLinear
            
            
            let size : CGFloat = CGFloat(arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat(arc4random_uniform(200))+20
            
            let coloredSquare = UIView()
            coloredSquare.backgroundColor = UIColor.blue
            coloredSquare.frame = CGRect(x: 0-size, y: yPosition, width: size, height: size)
            self.view.addSubview(coloredSquare)
            
            UIView.animate(withDuration: duration, delay: delay, options: options, animations: {
                coloredSquare.backgroundColor = UIColor.red
                coloredSquare.frame = CGRect(x: 500+size, y: yPosition+size, width: size, height: size)
            },
            completion: { animationFinished in
                coloredSquare.removeFromSuperview()
                        
            })
        }
    }
}

