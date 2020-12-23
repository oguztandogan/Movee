//
//  MoviesViewController.swift
//  Movee
//
//  Created by Hazal Eroglu on 23.12.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class MoviesViewController: UIViewController {
    
    // MARK: - Outlets -
//    @IBOutlet weak var nowPlayingCollectionView: UICollectionView!
//    @IBOutlet weak var ratingLabel: UILabel!
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var genreLabel: UILabel!
//    @IBOutlet weak var ratingView: UIView!
//    @IBOutlet weak var moviesView: UIView!
    

    // MARK: - Public properties -

    var presenter: MoviesPresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavController()
        presenter.viewDidLoad()
    }

    private func setupNavController() {
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
}

// MARK: - Extensions -

extension MoviesViewController: MoviesViewInterface {
}
