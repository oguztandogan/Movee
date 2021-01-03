//
//  PopularMoviesCardComponent.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit
import Alamofire
import AlamofireImage

public class PopularMoviesCardComponent: DataBasedComponentView<GenericViewDataProtocol> {
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [posterImageView, informationStackView])
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.backgroundColor = .clear
        return stackView
    }()
    
    private lazy var informationStackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel, dateView])
        stackView.setCustomSpacing(5, after: titleLabel)
        stackView.setCustomSpacing(10, after: subtitleLabel)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.backgroundColor = .clear
        return stackView
    }()
    
    private lazy var posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var titleLabel: CommonLabelComponent = {
        let label = CommonLabelComponent()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var subtitleLabel: CommonLabelComponent = {
        let label = CommonLabelComponent()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var dateView: DateComponent = {
        let view = DateComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public override func addMajorViews() {
        super.addMajorViews()
        addSubview(mainStackView)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    public override func loadDataIntoViews() {
        super.loadDataIntoViews()
        guard let data = returnData() as? PopularMoviesCardComponentData else {return}
        posterImageView.image = data.posterImage
        if let url = data.posterImageUrl {
            posterImageView.af.setImage(withURL: url, placeholderImage: data.posterImage)
        }
        titleLabel.setLabelData(data: data.titleLabel)
        subtitleLabel.setLabelData(data: data.subtitleLabel)
        dateView.setData(data: data.dateView)
    }
}
