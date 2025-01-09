//
//  TVShow.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import Foundation

struct PopularShowResponse: Codable {
    let results: [TVShow]
}

struct TVShow: Codable {
    let id: Int
    let name: String
    let first_air_date: String
    let vote_average: Double
}
