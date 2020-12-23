//
//  MoviesDetailsCreditsCollectionView.swift
//  Movee
//
//  Created by Oguz Tandogan on 22.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

extension MovieDetailsViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return creditsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let movieCreditsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MoviesDetailsCreditsCollectionViewCell", for: indexPath) as? MoviesDetailsCreditsCollectionViewCell
        else { return UICollectionViewCell() }
        let movieCredits = creditsList[indexPath.row]
        let creditsPosterUrl = constants.moviesArtworkUrl + movieCredits.profile_path
        movieCreditsCell.movieCreditsImageView.kf.setImage(with: URL(string: creditsPosterUrl))
        movieCreditsCell.movieActorNameLabel.text = movieCredits.name
        movieCreditsCell.movieCreditsImageView.layer.cornerRadius = movieCreditsCell.movieCreditsImageView.frame.size.width / 2
        movieCreditsCell.movieCreditsImageView.clipsToBounds = true
        return movieCreditsCell
    }
}
