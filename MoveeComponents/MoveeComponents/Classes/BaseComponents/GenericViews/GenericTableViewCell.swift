//
//  GenericTableViewCell.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit

open class GenericTableViewCell<D, T: DataBasedComponentView<D>>: BaseTableViewCell {
    
    open lazy var genericView: T = {
        let temp = T()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    open override func addMajorViews() {
        super.addMajorViews()
        
        contentView.addSubview(genericView)
        activateConstraints()
    }
    
    open func activateConstraints(){
        NSLayoutConstraint.activate([
            genericView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            genericView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            genericView.topAnchor.constraint(equalTo: contentView.topAnchor),
            genericView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    open func setCellData(data: D) {
        genericView.setData(data: data)
    }
    
    open func subscribeSelectedCellType(completion: @escaping SelectedViewType) {
        genericView.startPressedAnimationCommon { [weak self](finish) in
            if finish {
                guard let type = self?.genericView.returnViewType() else { return }
                completion(type)
            }
        }
    }
}
