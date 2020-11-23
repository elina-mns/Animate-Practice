//
//  ThirdViewController.swift
//  Animate Practice
//
//  Created by Elina Mansurova on 2020-11-23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let blackSquare = UIView()

    @IBOutlet weak var animateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateButton.addTarget(self, action: #selector(animatePressed), for: .touchUpOutside)
        
        blackSquare.backgroundColor = .black
        blackSquare.frame = CGRect(x: 100, y: 300, width: 80, height: 80)
        self.view.addSubview(blackSquare)
    }
    
    @objc func animatePressed() {
        
    }
}
