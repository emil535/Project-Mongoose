//
//  SimpleViewController.swift
//  Project Mongoose
//
//  Created by Emil Safier on 1/14/17.
//  Copyright © 2017 Emil Safier. All rights reserved.
//  DEMO COPY:  pushed to Git Hub on 2/3/2017

import UIKit

class SimpleViewController: UIViewController {
    // MARK: - Outlets and Properties
    
    @IBOutlet weak var critterNameLabel: UILabel!
    @IBOutlet weak var photo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        critterNameLabel.text = "Select Critter"
        photo.image = UIImage (named: "No Image")
    }
    // Mark: - Actions and Added Functions

    @IBAction func pickCritter(_ sender: UIButton) {
        let critter = sender.currentTitle!
        // text on button;  name of image
        let critterImage: UIImage? = UIImage(named: critter)
        critterNameLabel.text = critter
        photo.image = critterImage
        photo.layer.masksToBounds = false
        photo.layer.borderWidth = 0
        
        // Put the Mongoose in round frame
        if critterImage!.size.width == critterImage!.size.height {
            self.photo.layer.cornerRadius = self.photo.frame.width * 0.6
            self.photo.layer.masksToBounds = true
            self.photo.layer.borderWidth = 5
            self.photo.layer.borderColor = UIColor.darkGray.cgColor
        }
        
    }
}



