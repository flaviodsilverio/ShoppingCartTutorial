//
//  ShoppingCart.swift
//  Shopping Cart
//
//  Created by Flávio Silvério on 6/6/16.
//  Copyright © 2016 Flavio Silverio. All rights reserved.
//

import UIKit

class ShoppingCart: UITableViewController {
    
    var shoppingItems = [String]()
    //Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingItems.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myFirstCell   ")
        
        cell.textLabel?.text = shoppingItems[indexPath.row]
        
        return cell
    }
    
    @IBAction func addButtonPressed(sender: AnyObject) {
        
        let addItemAlertController = UIAlertController(title: "Add Item", message: "Please insert the name of the new shopping item:", preferredStyle: .Alert)
        
        addItemAlertController.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            
            textField.placeholder = "Shopping Item Name"
            
        })
        
        addItemAlertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
        
        addItemAlertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {
            (action) in
            
            if(addItemAlertController.textFields![0].text!.characters.count > 0){
                
                    self.shoppingItems.append(addItemAlertController.textFields![0].text!)
                    self.tableView.reloadData()

            }
        
        }))
        
        self.presentViewController(addItemAlertController, animated: false, completion: nil)
    }
    
}

