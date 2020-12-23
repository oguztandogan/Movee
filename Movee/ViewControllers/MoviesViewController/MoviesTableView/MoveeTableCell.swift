//
//  MoviesTableCell.swift
//  Movee
//
//  Created by Oguz Tandogan on 4.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import UIKit

class MoveeTableCell: UITableViewCell {

    @IBOutlet weak var viewOfCell: UIView!
    @IBOutlet weak var tableMovieImageView: UIImageView!
    @IBOutlet weak var tableMovieNameLabel: UILabel!
    @IBOutlet weak var tableGenreLabel: UILabel!
    @IBOutlet weak var tableMovieTimeLabel: UILabel!
    @IBOutlet weak var tableMovieDateLabel: UILabel!
    @IBOutlet weak var tableMovieRatingLabel: UILabel!
    @IBOutlet weak var tableMovieRatingView: UIView!
}
