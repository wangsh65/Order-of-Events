//
//  MiddleVC.swift
//  Order of Events
//
//  Created by Shelly on 5/29/24.
//

import UIKit

class MiddleVC: UITableViewController {


    @IBOutlet weak var MiddleViewController: UILabel!
    
    var eventNumber: Int =  1
    
    func addEvent(from: String) {
        if let existingText = MiddleViewController.text {
            MiddleViewController.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")

    }
    
    override func viewWillAppear( _ animated : Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated : Bool){
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    override func viewWillDisappear( _ animated : Bool){
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    override func viewDidDisappear( _ animated : Bool){
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappearr")
    }


    // MARK: - Table view data source

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
