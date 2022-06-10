//
//  TableViewController.swift
//  100 Days Of Swift-Project 4
//
//  Created by Arda Büyükhatipoğlu on 10.06.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    let websitesToLoad = ["apple.com", "github.com", "hackingwithswift.com", "google.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Websites"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websitesToLoad.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "urlCell", for: indexPath)
        cell.textLabel?.text = websitesToLoad[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Browser") as? ViewController {
            vc.initialPageToLoad = websitesToLoad[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}
