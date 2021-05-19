//
//  ViewController.swift
//  HomeWork2.1.2
//
//  Created by Kravtsov Evgeniy on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Red: UIView!
    @IBOutlet weak var Yellow: UIView!
    @IBOutlet weak var Green: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    let radius:CGFloat = 50
    let fadedLight:CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Red.layer.cornerRadius = radius
        Red.alpha = fadedLight
        Yellow.layer.cornerRadius = radius
        Yellow.alpha = fadedLight
        Green.layer.cornerRadius = radius
        Green.alpha = fadedLight

        // Do any additional setup after loading the view.
    }


    
    @IBAction func handleButtonClick() {
        
        let light:CGFloat = 1.0
        switch light {
        case Red.alpha:
            Yellow.alpha = light
            Red.alpha = fadedLight
        case Yellow.alpha :
            Green.alpha = light
            Yellow.alpha = fadedLight
        case Green.alpha:
            Red.alpha = light
            Green.alpha = fadedLight
        default:
            buttonStart.setTitle("Next", for: .normal)
            Red.alpha = light
        }
    }
    
}

