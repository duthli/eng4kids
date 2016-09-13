//
//  MasterTableVC.swift
//  End4Kid
//
//  Created by do duy hung on 13/09/2016.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {
    var dictionary = ["0": "animal0.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        adddict()

    }
    func adddict(){
        for (var i = 1 ; i <= 20 ; i++){
            dictionary["\(i)"] = "animal\(i).jpg"
            
        }
    print(dictionary)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dictionary.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        // Configure the cell...
        var arrayKey = Array(dictionary.keys).sort({self.dictionary[$0] < self.dictionary[$1]})
        //var arrayKey = Array(dictionary.keys)
        //print(dictionary.keys)
        cell.imageView?.bounds = CGRectMake(0, 0, 50, 50);
        cell.imageView?.frame = CGRectMake(0, 0, 50, 50);
        cell.imageView?.contentMode = .ScaleAspectFit
        cell.textLabel?.text = arrayKey[indexPath.row]
        cell.imageView?.image = UIImage(named: dictionary["\(arrayKey[indexPath.row])"]!)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
