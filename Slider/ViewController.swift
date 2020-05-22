//
//  ViewController.swift
//  Slider
//
//  Created by zoeli on 2020/5/9.
//  Copyright © 2020 zoeli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var girlImageView: UIImageView!
    
    @IBOutlet weak var balloonImageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    
    @IBAction func didTapSlider(_ sender: UISlider) {
        
        
        let speed = sender.value * 65
        
        let size = sender.value * 70
        
        self.balloonImageView.frame.origin.x = CGFloat(378-speed * 6)
        
        self.balloonImageView.frame.size = CGSize(width: CGFloat(201 - size), height: CGFloat(249 - size))
        
       
        if self.balloonImageView.frame.origin.x == 378 {
           
            self.girlImageView.image = UIImage(named: "girl_happy" )
        
        }else if self.balloonImageView.frame.origin.x < 378 && self.balloonImageView.frame.origin.x > 164 {
            
            self.girlImageView.image = UIImage(named: "girl_notHappy" )
            
        }else {
            
            self.girlImageView.image = UIImage(named: "girl_cry" )
            
        }

    }
    
    
    
    
    
    
}
