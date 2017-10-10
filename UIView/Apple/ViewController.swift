//
//  ViewController.swift
//  Apple
//
//  Created by Nguyen Manh Tuan on 10/10/17.
//  Copyright © 2017 Nguyen Manh Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emticon: Emoticon!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emticon.picture.image = #imageLiteral(resourceName: "emo1")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

