//
//  TrafficLightViewController.swift
//  KukhalashviliLA_HW2.1.2
//
//  Created by Admin on 13.10.2020.
//

import UIKit

class TrafficLightViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 70
        redView.backgroundColor = .red
        redView.alpha = 0.3
        greenView.layer.cornerRadius = 70
        greenView.backgroundColor = .green
        greenView.alpha = 0.3
        yellowView.layer.cornerRadius = 70
        yellowView.backgroundColor = .yellow
        yellowView.alpha = 0.3
    }

    @IBAction func startAction() {
        
        if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        } else if redView.alpha == 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if redView.alpha != 1 && yellowView.alpha == 1 && greenView.alpha != 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
   }
    
}
