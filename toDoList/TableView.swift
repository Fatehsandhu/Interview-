//
//  TableView.swift
//  toDoList
//
//  Created by Fateh Sandhu on 2017-02-17.
//  Copyright © 2017 Fateh Sandhu. All rights reserved.
//

/*
    This will be a simple To do list app that will utitlize a global variable and store the list of items.
    We will use a navigation bar to traverse throught the app.
*/
import UIKit

var list = ["Dummy entry"]

class TableView: UITableViewController  {

    @IBOutlet var theTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.tableView.isEditing = true
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    //We don't need this for our app, Uncomment if needed
    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */
    
    override func viewDidAppear(_ animated: Bool) {
        theTable.reloadData()
    }
    
    public override func numberOfSections(in tableView: UITableView) -> Int {
        //We will only need one section for this app.
        return 1
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Returns the number of Items in the list.
        return (list.count)
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Get the cell we will populate and then add each item from the list.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Remove the item when swiped.
            list.remove(at: indexPath.row)
            theTable.reloadData()
            
        }
    }
    
  /* Editing functionality that can be added
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
 */
}



















