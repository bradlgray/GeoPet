//
//  Hero.swift
//  GeoPet
//
//  Created by Brad Gray on 10/15/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import Foundation
import UIKit

class Hero: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    walkAnimation()
    }
    
    
    
    func walkAnimation() {
        self.image = UIImage(named: "walk(1).png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        for var i = 1; i <= 12; i++ {
            let walkImg = UIImage(named: "walk (\(i)).png")
            
            imgArray.append(walkImg!)
        }
        
        
        
        self.animationImages = imgArray
        self.animationDuration = 0.9
        self.animationRepeatCount = 0
        self.startAnimating()

        
    }
    
    
  
    
    func deathAnimation() {
        
        self.image = UIImage(named: "death (5).png")
        
        self.animationImages = nil
        
        var imageArray = [UIImage]()
        
                for var i = 1; i <= 5; i++ {
            let img = UIImage(named: "death (\(i)).png")
            
            imageArray.append(img!)
        }
        self.animationImages = imageArray
        self.animationDuration = 0.9
        self.animationRepeatCount = 0
        self.startAnimating()
        
    }

    
}