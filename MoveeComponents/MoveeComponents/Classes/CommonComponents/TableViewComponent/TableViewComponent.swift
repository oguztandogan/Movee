//
//  TableViewComponent.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit

public class TableViewComponent: ProtocolBasedComponentView<TableViewComponentProtocol> {
    
    private var selectedViewTypeCompletion: SelectedViewType
    
    lazy var tableView: UITableView = {
        let temp = UITableView(frame: .zero, style: .plain)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isUserInteractionEnabled = true
        
        temp.rowHeight = UITableView.automaticDimension
        temp.estimatedRowHeight = 360
        
        temp.allowsMultipleSelection = false
        
        temp.delegate = self
        temp.dataSource = self
        
        temp.tableFooterView = UIView()
        temp.separatorStyle = .none
        
        return temp
    }()
    
    public override func addMajorViews() {
        super.addMajorViews()
        
        addTableView()
    }
    
    private func addTableView() {
        addSubview(tableView)
        
        NSLayoutConstraint.activate([
                                        tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
                                        tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
                                        tableView.topAnchor.constraint(equalTo: topAnchor),
                                        tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    public override func setupView() {
        super.setupView()
        registerTableViewCell()
    }
    
    private func registerTableViewCell() {
        tableView.genericRegister(GenericStackViewTableViewCell.self)
    }
    
    private func getNumberOfItems() -> Int {
        guard let delegate = delegate else { return 0 }
        return delegate.getNumberOfItems()
    }
    
    private func getRelatedItems(indexPath: IndexPath) -> GenericViewDataProtocol? {
        guard let delegate = delegate else { return nil }
        return delegate.getItem(index: indexPath.row)
    }
    
    public func tableViewActivationManager(active: Bool) {
        tableView.isScrollEnabled = active
    }
    
    public func subscribeViewSelection(completion: @escaping SelectedViewType) {
        selectedViewTypeCompletion = completion
    }
    
    private func listenSelectedRatingButton(selectedType: GenericViewType) {
        print("selectedTyper : \(selectedType)")
        selectedViewTypeCompletion?(selectedType)
    }
    
}

extension TableViewComponent: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getNumberOfItems()
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data = getRelatedItems(indexPath: indexPath) else { fatalError() }
        let cell: GenericStackViewTableViewCell = tableView.genericDequeReusableCell(for: indexPath)
        cell.setCellData(data: data)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell: GenericStackViewTableViewCell = table.genericCellFotItem(at: indexPath)
        cell.subscribeSelectedCellType(completion: listenSelectedRatingButton(selectedType: ))
    }
    
}


//public class TableViewComponent: DataBasedComponentView<TableViewComponentData> {
//
//    private lazy var tableView: UITableView = {
//        let tableView = UITableView()
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        return tableView
//    }()
//
//    public override func addMajorViews() {
//        super.addMajorViews()
//        addSubview(tableView)
//        setupConstraints()
//    }
//
//    private func setupConstraints(){
//        NSLayoutConstraint.activate([
//            tableView.topAnchor.constraint(equalTo: topAnchor),
//            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
//        ])
//    }
//
//    public override func loadDataIntoViews() {
//        super.loadDataIntoViews()
//        guard let data = returnData() else {return}
//        guard let tableViewCellIdentifier = data.tableViewCellIdentifier else { return }
//        tableView.register(data.tableViewCell, forCellReuseIdentifier: tableViewCellIdentifier)
//        tableView.allowsSelection = data.isSelectionAllowed ?? false
//        tableView.backgroundColor = data.backgroundColor
//        tableView.separatorStyle = data.seperatorStyle ?? .none
//        tableView.bounces = data.isBounces ?? false
//    }
//
//}
