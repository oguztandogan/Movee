//
//  Wireframes.swift
//  Movee
//
//  Created by Oguz Tandogan on 17.11.2020.
//  Copyright © 2020 Oguz Tandogan. All rights reserved.
//

import Foundation

public enum Wireframes {
    
    public typealias Value = BaseWireframe
    
    //    // MARK: - Authentication Wireframes -
    //    case registerWireframe
    case loginWireframe
    //    case forgotPasswordWireframe
    //
    //    // MARK: - Movie Pages Wireframes -
    //    case moviesMainPageWireframe
    //    case movieDetailPageWireframe
    //
    //    // MARK: - Tv Show Pages Wireframes -
    //    case tvShowsMainPageWireframe
    //    case tvShowsDetailPageWireframe
    //
    //    // MARK: - Credits Pages Wireframes -
    //    case creditsDetailPageWireframe
    //
    //    // MARK: - Searching Wireframes -
    //    case searchWireframe
    //
    //    // MARK: - Profile Page Wireframes -
    //    case profilePageWireframe
    
    public var value: BaseWireframe {
        switch self {
        // MARK: - Authentication Wireframes -
        //        case .registerWireframe:
        //            return registerWireframe()
        case .loginWireframe:
            return LoginWireframe()
        //        case forgotPasswordWireframe
        //
        //        // MARK: - Movie Pages Wireframes -
        //        case moviesMainPageWireframe
        //        case movieDetailPageWireframe
        //
        //        // MARK: - Tv Show Pages Wireframes -
        //        case tvShowsMainPageWireframe
        //        case tvShowsDetailPageWireframe
        //
        //        // MARK: - Credits Pages Wireframes -
        //        case creditsDetailPageWireframe
        //
        //        // MARK: - Searching Wireframes -
        //        case searchWireframe
        //
        //        // MARK: - Profile Page Wireframes -
        //        case profilePageWireframe
        //        }
        }
    }
}
