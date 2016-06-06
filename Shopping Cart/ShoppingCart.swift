//
//  ShoppingCart.swift
//  Shopping Cart
//
//  Created by Flávio Silvério on 6/6/16.
//  Copyright © 2016 Flavio Silverio. All rights reserved.
//

import UIKit

class ShoppingCart: UITableViewController {
    
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
        return 50
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myFirstCell   ")
        
        cell.textLabel?.text = "This will be my first iOS App"
        
        return cell
    }
    
}
