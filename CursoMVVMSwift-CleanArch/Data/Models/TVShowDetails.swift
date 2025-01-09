//
//  TVShowDetails.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import Foundation

struct TVShowDetails: Codable {
    let name: String
    let overview: String
    let genres: [Genre]
}

struct Genre: Codable {
    let name: String 
}

/**
    private let apiKey = "a381377045f01e9e491feea2aee4d6de"
    private let baseUrl = "https://api.themoviedb.org/3/movie/upcoming"
 */
