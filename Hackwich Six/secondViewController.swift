//
//  secondViewController.swift
//  Hackwich Six
//
//  Created by binh phan on 10/10/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myPlacesArray = ["Denmark", "UAE", "Germany"]
    var myPlacesCityArray = ["Billund", "Dubai", "Berlin"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPlacesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myPlacesArray[indexPath.row]
        cell.detailTextLabel?.text = myPlacesCityArray[indexPath.row]
        cell.textLabel?.text = text
        return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
