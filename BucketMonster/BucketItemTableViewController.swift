//
//  BucketItemTableViewController.swift
//  BucketMonster
//
//  Created by Christopher Reed on 2/11/17.
//  Copyright © 2017 Christopher Reed. All rights reserved.
//

import UIKit
import os.log

class BucketItemTableViewController: UITableViewController {
    
    //MARK: Properties
    var bucketList = [BucketItem]()
    //var bucketItem: BucketItem?
    
    
    //MARK: Private Methods
    
    private func loadSampleData() {
        let b1 = BucketItem(name: "Cry Softly", date: Date())
        let b2 = BucketItem(name: "Call Parents", date: Date())
        let b3 = BucketItem(name: "Go to ABC", date: Date())


        bucketList += [b1, b2, b3]
            
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleData()
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bucketList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "BucketItemTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BucketItemTableViewCell

        let bucketItem = bucketList[indexPath.row]
        
        // Configure the cell...
        cell.nameLabel.text = bucketItem.name
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        let convertedDate = dateFormatter.string(from: bucketItem.date)
        cell.dateLabel.text = convertedDate



        return cell
    }
    
    
    // Lets you add various buttons when you swipe
    override func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
        let done = UITableViewRowAction(style: .normal, title: "Done") { action, index in
            
            
        }
        done.backgroundColor = .green
        
        let edit = UITableViewRowAction(style: .normal, title: "Edit") { action, index in
            
            
        }
        edit.backgroundColor = .orange
        
        
        return [done, edit]
    }

    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch(segue.identifier ?? "") {
//            case "AddItem":
//                os_log("Adding a new meal.", log: OSLog.default, type: .debug)
//            
//            default:
//                fatalError("Unexpected Segue Identifier; \(segue.identifier)")
//        }
//    }
    

    @IBAction func unwindToBucketList(sender: UIStoryboardSegue) {
        
        if let sourceViewController = sender.source as? AddItemViewController, let bucketItem = sourceViewController.bucketItem {
            
            // Add a new meal.
            let newIndexPath = IndexPath(row: bucketList.count, section: 0)
            
            bucketList.append(bucketItem)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
        
    }
    
    

}
