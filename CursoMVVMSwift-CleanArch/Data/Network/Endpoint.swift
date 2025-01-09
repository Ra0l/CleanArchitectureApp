//
//  Endpoint.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import Foundation

// MARK: - HTTPMethod

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

// MARK: - Endpoint

enum Endpoint {
    case popularShows
    case tvShowDetails(id: Int)
    
    var url: URL {
        let baseUrl = "https://api.themoviedb.org/3"
        let apiKey = "a381377045f01e9e491feea2aee4d6de"
        
        switch self {
        case .popularShows:
            return URL(string: "\(baseUrl)/tv/popular?api_key=\(apiKey)&language=es_ES&page=1")!
        case .tvShowDetails(let id):
            return URL(string: "\(baseUrl)/tv/\(id)?api_key=\(apiKey)&language=es_ES")!
        }
    }
    
    var method: HTTPMethod {
        return .get
    }
}
