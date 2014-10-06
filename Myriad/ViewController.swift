//
//  ViewController.swift
//  Myriad
//
//  Created by Luis Espinal on 10/6/14.
//  Copyright (c) 2014 Luis Espinal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    var Balloons: [Balloon] = []

    
    @IBOutlet weak var balloonLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        balloonFactory()
        
    }

    func balloonFactory () {
        // Function to create 99 balloons
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            var balloon = Balloon()
            balloon.number = balloonCount
            
            let randomNumber = Int(arc4random_uniform(4))
            
            switch randomNumber {
                
            case 1:
                balloon.image = UIImage (named: "RedBalloon1.jpg")
            case 2:
                balloon.image = UIImage (named: "RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage (named: "RedBalloon3.jpg")
            default:
                balloon.image = UIImage (named: "RedBalloon4.jpg")
                
            }
            
            self.Balloons.append(balloon)
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButtonPressed(sender: AnyObject) {
        
        let balloon = Balloons [currentIndex]
            balloonLabel.text = "\(balloon.number) balloon"
            imageView.image = balloon.image
        
            currentIndex += 1
        
        }
    }