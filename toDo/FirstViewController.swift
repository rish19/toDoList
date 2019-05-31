//
//  FirstViewController.swift
//  toDo
//
//  Created by Rishabh Bhandari on 31/05/19.
//  Copyright © 2019 Rishabh Bhandari. All rights reserved.
//

import UIKit

var list = ["Sleep", "Eat food", "Drink water", "Learn how to make apps", "watch JCB ki khudai"]

class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style:.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            list.remove(at: indexPath.row)
            tableView.reloadData()
            
        }
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

