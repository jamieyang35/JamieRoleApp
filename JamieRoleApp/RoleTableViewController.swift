//
//  RoleTableViewController.swift
//  JamieRoleApp
//
//  Created by stoller on 2019/3/28.
//  Copyright © 2019年 stoller. All rights reserved.
//

import UIKit

class RoleTableViewController: UITableViewController {
//test
    var roles = [Role(name: "Bob Parr" , image: "Bob", gender: "M"), Role(name: "Helen Parr" , image: "Helen", gender: "F"),Role(name: "Dashiell Parr" , image: "Dashiell", gender: "M"),Role(name: "Violet Parr" , image: "Violet", gender: "F"), Role(name: "Jack-jack Parr" , image: "Jack-jack", gender: "M")]
    
    
    @IBOutlet var roleLabel: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var i = 0
        for role in roles {
            roleLabel[i].text = role.name
            i = i + 1
        }
    }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem


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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as? RoleViewController
        
        if let row = tableView.indexPathForSelectedRow{
            controller?.role = role
            
        }
        
        
    }
    
    
}

