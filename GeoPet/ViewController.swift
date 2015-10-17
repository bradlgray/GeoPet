//
//  ViewController.swift
//  GeoPet
//
//  Created by Brad Gray on 10/14/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var skull1: UIImageView!
    @IBOutlet weak var skull2: UIImageView!
    @IBOutlet weak var skull3: UIImageView!
    @IBOutlet weak var heroImg: Hero!
    @IBOutlet weak var heart: dragImg!
    @IBOutlet weak var food: dragImg!
    
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heart.dropTarget = heroImg
        food.dropTarget = heroImg
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
    }

  
    func itemDroppedOnCharacter(notif: AnyObject) {
        print("i touched")
    }
    
    
    
    
}

