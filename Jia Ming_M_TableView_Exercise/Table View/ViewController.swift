//
//  ViewController.swift
//  Table View
//
//  Created by Jia Ming Mei on 8/4/20.
//  Copyright © 2020 Jia Ming Mei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let gpus = ["GT 1030", "GTX 1050", "GTX 1050 Ti", "GTX 1650", "GTX 1060", "GTX 1660", "GTX 1660 Ti", "GTX 1070", "GTX 1070 Ti", "GTX 1080", "GTX 1080 Ti", "RTX 2060", "RTX 2070", "RTX 2080"]

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gpus.count
    }


func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
    cell?.textLabel?.text = gpus[indexpath.row]
    return cell!
    }
}

