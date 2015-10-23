//
//  GeneratePuzzleTableViewController.swift
//  GeoPuzzles
//
//  Created by CIS Student on 10/22/15.
//  Copyright © 2015 Freed-Hardeman University. All rights reserved.
//

import UIKit

class GeneratePuzzleTableViewController: UITableViewController {

    var dummyData = DummyData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
        
        
    }
    
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableCellWithIdentifier("headerCell") as! GeneratePuzzleHeaderTableViewCell
        view.backgroundColor = UIColor.blueColor()
        //UIColor(red: */255, green: */255, blue: */255, alpha: */1)
        view.header.textColor = UIColor.whiteColor()
        
        switch(section) {
        case 0:
            view.header.text = "Random Puzzles"
            return view
        case 1:
            view.header.text = "Local Puzzles"
            return view
        default:
            return nil
        }

    }

    override func tableView (tableView:UITableView , heightForHeaderInSection section:Int) -> CGFloat
    {
        return 50.0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch (section) {
        case 0:
            return dummyData.randomPuzzles.count
        case 1:
            return dummyData.localPuzzles.count
        default:
            return 0
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("puzzleCell", forIndexPath: indexPath) as! GeneratePuzzleTableViewCell
        switch (indexPath.section) {
        case 0:
            cell.puzzleName.text = dummyData.randomPuzzles[indexPath.row]
            break
        case 1:
            cell.puzzleName.text = dummyData.localPuzzles[indexPath.row]
            break
        default:
            break
        }
        // Configure the cell...

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
