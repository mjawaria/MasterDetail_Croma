//
//  MasterViewController.swift
//  MasterDetailApp
//
//  Created by Mukul on 16/09/25.
//

import UIKit

class MasterViewController: UITableViewController {
    let items = [
        
        ItemModel(title: "Swift", description: "Apples modern programming language."),
        ItemModel(title: "iOS", description: "Operating system for iPhone and iPad"),
        ItemModel(title: "Xcode", description: "Apple's IDE for building apps.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Technologies"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    //MARK:  Number of rows
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = items[indexPath.row]
        
        print("selected Item \(indexPath.row)")
        
        let detailsVC = DetaildViewController()
        
        detailsVC.item = selectedItem
        
        navigationController?.pushViewController(detailsVC, animated: true)
        
        // let seleccted =  items.indexPath.row;]
        
        
        //  delegate?ddidselcted( selectedItem}
    }
}
