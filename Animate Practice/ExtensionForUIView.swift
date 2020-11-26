//
//  ExtensionForUIView.swift
//  Animate Practice
//
//  Created by Elina Mansurova on 2020-11-26.
//

import UIKit


extension UIView {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
