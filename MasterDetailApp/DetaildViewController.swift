//
//  DetaildViewController.swift
//  MasterDetailApp
//
//  Created by Mukul on 16/09/25.
//

import UIKit

class DetaildViewController:  UIViewController {
    
    var item: ItemModel? // Data passed from Mater
    
    private let titleLable = UILabel()
    private let descriptionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    private func setupUI() {
        
        titleLable.font = UIFont.boldSystemFont(ofSize: 24)
        descriptionLabel.font = UIFont.systemFont(ofSize: 18)
        descriptionLabel.numberOfLines = 0
        
        let stack = UIStackView(arrangedSubviews: [titleLable, descriptionLabel])
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stack)
        
        //MARK: - Adding constraint
        
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        // Set Values
        
        titleLable.text = item?.title
        descriptionLabel.text = item?.description
    }
    
    
}
