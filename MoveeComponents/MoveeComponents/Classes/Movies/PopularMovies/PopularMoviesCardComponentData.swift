//
//  PopularMoviesCardComponentData.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit

public class PopularMoviesCardComponentData: GenericViewDataProtocol {
    public var viewType: GenericViewType?
    
    private(set) var posterImage: UIImage?
    private(set) var posterImageUrl: URL?
    private(set) var titleLabel: CommonLabelComponentData?
    private(set) var subtitleLabel: CommonLabelComponentData?
    private(set) var dateView: DateComponentData?
    private(set) var backgroundColor: UIColor?
    
    public init(posterImage: UIImage?,
                posterImageUrl: URL?,
                titleLabel: CommonLabelComponentData?,
                subtitleLabel: CommonLabelComponentData?,
                dateView: DateComponentData?,
                backgroundColor: UIColor? = .white){
        self.posterImage = posterImage
        self.posterImageUrl = posterImageUrl
        self.titleLabel = titleLabel
        self.subtitleLabel = subtitleLabel
        self.dateView = dateView
        self.backgroundColor = backgroundColor
    }
    
//    public func setTableViewBackgroundColor(backgroundColor: UIColor?) -> Self {
//        self.backgroundColor = backgroundColor
//        return self
//    }
//
//    public func setTableViewSeperatorStyle(seperatorStyle: UIColor?) -> Self {
//        self.seperatorStyle = seperatorStyle
//        return self
//    }
//
//    public func
    
}
