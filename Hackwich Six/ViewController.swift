//
//  ViewController.swift
//  Hackwich Six
//
//  Created by binh phan on 10/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myFriendsArray = ["Asagi", "Keiko", "Binh"]
    var myfriendsHomeArray = ["Dubai", "Tokyo", "Kapolei"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myFriendsArray[indexPath.row]
        cell.detailTextLabel?.text = myfriendsHomeArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

