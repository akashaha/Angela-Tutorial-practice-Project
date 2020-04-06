//
//  ViewController.swift
//  Dice App
//
//  Created by Arman Akash on 21/2/20.
//  Copyright © 2020 Arman Akash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageArray : [UIImage] = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButton(_ sender: Any) {
        
        imageView1.image = imageArray[Int.random(in: 0...5)]
         imageView2.image = imageArray[Int.random(in: 0...5)]
        
    }
    
}

