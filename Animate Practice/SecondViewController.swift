//
//  SecondViewController.swift
//  Animate Practice
//
//  Created by Elina Mansurova on 2020-11-20.
//

import UIKit

class SecondViewController: UIViewController {
    
    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var animateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateButton.addTarget(self, action: #selector(animatePressed), for: .touchUpInside)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        view.addSubview(container)
        
        redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        blueSquare.frame = redSquare.frame
        
        redSquare.backgroundColor = UIColor.red
        blueSquare.backgroundColor = UIColor.blue
        
        container.addSubview(redSquare)
    }
    
    @objc func goBack() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func animatePressed() {
        var views: (frontView: UIView, backView: UIView)
        
        if ((self.redSquare.superview) != nil) {
            views = (frontView: redSquare, backView: blueSquare)
        } else {
            views = (frontView: blueSquare, backView: redSquare)
        }
        let transitionOptions = UIView.AnimationOptions.transitionFlipFromLeft
        UIView.transition(from: views.frontView, to: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }

}
