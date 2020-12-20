//
//  NoResultsBackgroundView.swift
//  Movee
//
//  Created by Oguz Tandogan on 9.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import UIKit

class NoResultsBackgroundView: UIView {
    
    @IBOutlet var noResultsBackgroundView: NoResultsBackgroundView!
    @IBOutlet weak var noResultsImageView: UIImageView!
    @IBOutlet weak var noResultsLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("NoResultsBackgroundView", owner: self, options: nil)
        addSubview(noResultsBackgroundView)
        noResultsBackgroundView.frame = self.bounds
        noResultsBackgroundView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
