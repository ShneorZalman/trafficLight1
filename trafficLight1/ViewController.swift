//
//  ViewController.swift
//  trafficLight1
//
//  Created by Zalman Zoteev on 21/04/2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var changeLightButton: UIButton!
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    
    private var statusLight = "red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.layer.cornerRadius = redLabel.frame.height / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.height / 2
        changeLightButton.layer.cornerRadius = 10

    }

    @IBAction func changeButtonTapped() {
        if statusLight == "red" {
            redLabel.alpha = 1
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 0.3
            statusLight = "yellow"
        } else if statusLight == "yellow" {
            redLabel.alpha = 0.3
            yellowLabel.alpha = 1
            greenLabel.alpha = 0.3
            statusLight = "green"
        } else {
            redLabel.alpha = 0.3
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 1
            statusLight = "red"
        }
        
    changeLightButton.setTitle("Next", for: .normal)

    }
}

