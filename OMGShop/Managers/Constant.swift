//
//  Constant.swift
//  OMGShop
//
//  Created by Mederic Petit on 25/10/2560 BE.
//  Copyright © 2560 Mederic Petit. All rights reserved.
//

import UIKit

typealias ViewModelValidationClosure = ((_ errorMessage: String?) -> Void)
typealias EmptyClosure = () -> Void
typealias SuccessClosure = () -> Void
typealias ObjectClosure<T> = (_ object: T) -> Void
typealias FailureClosure = (_ error: OMGError) -> Void
typealias APIClosure<T: Decodable> = ObjectClosure<Response<T>>

enum Storyboard {
    case loading
    case login
    case register
    case product
    case popup

    var name: String {
        switch self {
        case .loading: return "Loading"
        case .login: return "Login"
        case .register: return "Register"
        case .product: return "Product"
        case .popup: return "Popup"
        }
    }

    var storyboard: UIStoryboard {
        return UIStoryboard.init(name: self.name, bundle: nil)
    }
}

enum UserDefaultKeys: String {
    case appAuthenticationToken = "token.app_authentication_token"
    case omiseGOAuthenticationToken = "token.omisego_authentication_token"
}

enum AppState {
    case logout
    case loading
    case login
}

struct Constant {

    static let omiseGOhostURL = "https://kubera.omisego.io"
    static let hostURL = "https://kubera.omisego.io"
    static let apiKey = "xxx"
    static let omiseGOAPIKey = "1482qNxPey7A4_rrKkAOb4kAOTsD2HoLysS7eQ1Zd3Y"
    static let authenticatedScheme = "OMGAuthenticated"
    static let unAuthenticatedScheme = "OMGBasic"

}
