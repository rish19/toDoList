//
//  SecondViewController.swift
//  toDo
//
//  Created by Rishabh Bhandari on 31/05/19.
//  Copyright © 2019 Rishabh Bhandari. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var inputText: UITextField!
    
    
    @IBAction func addItem(_ sender: Any) {
        
        if inputText.text != "" {
        
        list.append(inputText.text!)
        inputText.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

