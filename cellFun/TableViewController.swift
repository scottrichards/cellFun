//
//  TableViewController.swift
//  cellFun
//
//  Created by Sebastian Hette on 04.04.2017.
//  Copyright © 2017 MAGNUMIUM. All rights reserved.
//

import UIKit

var sectionNames = ["House Pets", "Farm Animals", "Wild Animals"]

var animalsByGroup = [["Dog", "Cat", "Rabbit", "Mouse", "Guinea Pig","Goldfish"],["Horse", "Pig", "Cow", "Goat"],["Giraffe", "Camel", "Zebra", "Ostrich", "Jaguar", "Antelope", "Lion", "Bear", "Tiger", "Elephant"]]

var pets = ["Dog", "Cat", "Rabbit", "Mouse", "Guinea Pig", "Horse", "Pig", "Goldfish", "Giraffe", "Camel", "Zebra", "Ostrich", "Jaguar", "Antelope", "Lion", "Bear", "Tiger", "Elephant"]
var petDesc = ["Dog is an animal that has four legs", "A cat is an animal that likes to eat fish", "A rabbit is an animal that likes to jump arond"]
var myIndex = 0

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.contentInset = UIEdgeInsetsMake(320.0, 0.0, 20.0, 0)
        
    }
    
    override func viewDidLayoutSubviews() {
        tableView.contentOffset = CGPoint(x: 0, y: -320.0)
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = pets[indexPath.row]

        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            // delete item at indexPath
        }
        
        let share = UITableViewRowAction(style: .normal, title: "Disable") { (action, indexPath) in
            // share item at indexPath
        }
        
        share.backgroundColor = UIColor.blue
        
        return [delete, share]
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionNames[section]
    }
}
