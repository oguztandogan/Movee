//
//  CollectionViewComponent.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 1.01.2021.
//

import UIKit

public class CollectionViewComponent: DataBasedComponentView<CollectionViewComponentData> {

    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [imageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.backgroundColor = .clear
        return stackView
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var collectionViewCell: UICollectionViewCell = {
        guard let data = getRelatedItems(indexPath: indexPath) else { fatalError() }
        let cell = UICollectionViewCell()
        //cell.set
        return cell
    }()
}
