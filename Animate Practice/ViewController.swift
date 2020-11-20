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
        coloredSquare.backgroundColor = UIColor.blue
        coloredSquare.frame = CGRect(x:0, y:120, width:50, height:50)
        self.view.addSubview(coloredSquare)
        UIView.animate(withDuration: 1.0, animations: {
            coloredSquare.backgroundColor = UIColor.red
            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        },
        completion: { animationFinished in
            coloredSquare.removeFromSuperview()
                    
        })
    }

}

