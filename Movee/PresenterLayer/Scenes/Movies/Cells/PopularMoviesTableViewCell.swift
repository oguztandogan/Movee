//
//  PopularMoviesTableViewCell.swift
//  Movee
//
//  Created by Oguz Tandogan on 3.01.2021.
//  Copyright © 2021 Oguz Tandogan. All rights reserved.
//

import Foundation
import UIKit
import MoveeComponents

class PopularMoviesTableViewCell: GenericTableViewCell<GenericViewDataProtocol, PopularMoviesCardComponent> {
    
    override func addMajorViews() {
        super.addMajorViews()
        contentView.backgroundColor = .clear
    }
    
    override func activateConstraints() {
        NSLayoutConstraint.activate([
            genericView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            genericView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            genericView.topAnchor.constraint(equalTo: contentView.topAnchor),
            genericView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
}
