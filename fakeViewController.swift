//
//  fakeViewController.swift
//  Emanager
//
//  Created by Deepak Gupta on 25/02/23.
//

import UIKit

class fakeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arr1 = ["aaa","bbb","ccc","ddd"]
    var arr2 = ["AAA","BBB","CCC","DDD"]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

     let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arr1[indexPath.row]
        cell?.detailTextLabel?.text = arr2[indexPath.row]
        return cell!
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
}
