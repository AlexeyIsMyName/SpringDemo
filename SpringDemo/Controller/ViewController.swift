//
//  ViewController.swift
//  SpringDemo
//
//  Created by ALEKSEY SUSLOV on 11.08.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationParametersLabel: UILabel!
    
    var animation = Animation.getRandom()

    @IBAction func runAnimationButtonPressed(_ sender: UIButton) {
        animationParametersLabel.text = animation.description
        animationParametersLabel.textAlignment = .left
        
        animationView.animation = animation.preset.rawValue
        animationView.curve = animation.curve.rawValue
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        
        animationView.animate()
        
        animation = Animation.getRandom()
        sender.setTitle("Run \(animation.preset.rawValue)", for: .normal)
    }
}

