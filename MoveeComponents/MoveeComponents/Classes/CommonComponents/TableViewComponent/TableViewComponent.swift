//
//  TableViewComponent.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit

public class TableViewComponent: DataBasedComponentView<TableViewComponentData> {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    public override func addMajorViews() {
        super.addMajorViews()
        addSubview(tableView)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    public override func loadDataIntoViews() {
        super.loadDataIntoViews()
        guard let data = returnData() else {return}
        guard let tableViewCellIdentifier = data.tableViewCellIdentifier else { return }
        tableView.register(data.tableViewCell, forCellReuseIdentifier: tableViewCellIdentifier)
        tableView.allowsSelection = data.isSelectionAllowed ?? false
        tableView.backgroundColor = data.backgroundColor
        tableView.separatorStyle = data.seperatorStyle ?? .none
        tableView.bounces = data.isBounces ?? false
    }
    
}
