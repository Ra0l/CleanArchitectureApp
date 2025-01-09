//
//  TVShowRepository.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import Foundation

//MARK: - TVShowRepository

protocol TVShowRepository {
    func fetchPopularShows() async throws -> [TVShow]
    func fetchShowDetails(id: Int) async throws -> TVShowDetails
}
