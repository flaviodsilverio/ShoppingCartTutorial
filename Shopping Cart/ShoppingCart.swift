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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingItems.count
    }
    
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = shoppingItems[indexPath.row]
        UserDefaults.standard()
        
        return cell
    }
        

    
    @IBAction func addButtonPressed(sender: AnyObject) {
        
        let addItemAlertController = UIAlertController(title: "Add Item", message: "Please insert the name of the new shopping item:", preferredStyle: .alert)
        
        addItemAlertController.addTextField(configurationHandler: {(textField: UITextField!) in
            
            textField.placeholder = "Shopping Item Name"
            
        })
        
        addItemAlertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
        
        addItemAlertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {
            (action) in
            
            if(addItemAlertController.textFields![0].text!.characters.count > 0){
                
                    self.shoppingItems.append(addItemAlertController.textFields![0].text!)
                    self.tableView.reloadData()

            }
        
        }))
        
        self.present(addItemAlertController, animated: false, completion: nil)
    }
    
}

