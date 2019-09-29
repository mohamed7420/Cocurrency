//
//  ViewController.swift
//  Cocurrency
//
//  Created by Mohamed on 9/28/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // learn concurrency code manged by dispatch group
        
        
 
        
        // UILabel.text must be used from main thread only
        DispatchQueue.global(qos: .background).async {
            
            print("On the background")
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
                
                print("On the main thread")
                self.labelText.text = "Mohamed Osama is a iOS developer"
                
            })
        }

        
    }


}

