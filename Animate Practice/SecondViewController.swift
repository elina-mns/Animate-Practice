//
//  SecondViewController.swift
//  Animate Practice
//
//  Created by Elina Mansurova on 2020-11-20.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var animateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateButton.addTarget(self, action: #selector(animatePressed), for: .touchUpInside)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)

        let container = UIView()
        let redSquare = UIView()
        let blueSquare = UIView()
        
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
        
    }

}
