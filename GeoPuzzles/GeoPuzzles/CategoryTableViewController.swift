//
//  CategoryTableViewController.swift
//  GeoPuzzles
//
//  Created by CIS Student on 11/19/15.
//  Copyright © 2015 Freed-Hardeman University. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {

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
        let view = tableView.dequeueReusableCellWithIdentifier("headerCell") as! SketchHeaderTableViewCell
        view.backgroundColor = UIColor.blueColor()
        //UIColor(red: */255, green: */255, blue: */255, alpha: */1)
        view.header.textColor = UIColor.whiteColor()
        
        switch(section) {
        case 0:
            view.header.text = "Top Picture"
            return view
        case 1:
            view.header.text = "The Rest"
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
            return dummyData.petSketches.count
        case 1:
            return dummyData.petSketches.count
        default:
            return 0
        }
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("puzzleCell", forIndexPath: indexPath) as! SketchesTableViewCell
        switch (indexPath.section) {
        case 0:
            cell.artistName.text = dummyData.petSketches[indexPath.row]
            cell.locationLabel.text = dummyData.sketchLocation[indexPath.row]
            cell.postDate.text = dummyData.counter[indexPath.row]
            cell.descriptionLabel.text = dummyData.sketchDescription[indexPath.row]
            break
        case 1:
            cell.artistName.text = dummyData.petSketches[indexPath.row]
            cell.locationLabel.text = dummyData.sketchLocation[indexPath.row]
            cell.postDate.text = dummyData.counter[indexPath.row]
            cell.descriptionLabel.text = dummyData.sketchDescription[indexPath.row]
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
