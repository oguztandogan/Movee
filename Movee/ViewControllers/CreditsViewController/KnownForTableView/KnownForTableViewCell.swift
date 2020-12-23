//
//  KnownForTableViewCell.swift
//  Movee
//
//  Created by Oguz Tandogan on 27.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import UIKit

class KnownForTableViewCell: UITableViewCell {

    @IBOutlet weak var creditsKnownForView: UIView!
    @IBOutlet weak var creditsKnownForMovieNameLabel: UILabel!
    @IBOutlet weak var creditsKnownForImageView: UIImageView!
    @IBOutlet weak var creditsKnownForCharacterLabel: UILabel!
    @IBOutlet weak var creditsKnownForDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
