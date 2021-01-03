////
////  CollectionViewCellComponent.swift
////  MoveeComponents
////
////  Created by Oguz Tandogan on 1.01.2021.
////
//
//import UIKit
//
//public class CollectionViewCellComponent: DataBasedComponentView<CollectionViewComponentData> {
//    
//    private lazy var mainStackView: UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [imageView])
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.alignment = .fill
//        stackView.distribution = .fill
//        stackView.axis = .vertical
//        stackView.backgroundColor = .clear
//        return stackView
//    }()
//    
//    private lazy var imageView: UIImageView = {
//       let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFill
//        return imageView
//    }()
//    
//}
