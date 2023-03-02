//
//  testTableViewController.swift
//  Emanager
//
//  Created by Deepak Gupta on 25/02/23.
//

import UIKit

class testTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var array1 = ["AAA","BBB","CCC","DDD","KKK","EEE","FFF","GGG","hhh","iii","jjjj","kkkk","lll"]
    
    var array2 = ["aaa","bbb","ccc","ddd","eee","fff","gggg","hhh","iii","jjjj","kkkk","lll"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = array1[indexPath.row]
        cell?.detailTextLabel?.text = array2[indexPath.row]
        return cell!
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
