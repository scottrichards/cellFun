//
//  ViewController.swift
//  cellFun
//
//  Created by Sebastian Hette on 04.04.2017.
//  Copyright © 2017 MAGNUMIUM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        titleLabel.text = pets[myIndex]
        descLabel.text = petDesc[myIndex]
        myImageView.image = UIImage(named: pets[myIndex] + ".jpg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

