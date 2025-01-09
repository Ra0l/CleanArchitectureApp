//
//  GetPopularTVShowUseCaseProtocol.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import Foundation

//MARK: - GetPopularTVShowUseCaseProtocol

protocol GetPopularTVShowUseCaseProtocol {
    func execute() async throws -> [TVShow]
}

//MARK: - GetPopularTVShowUseCase

final class GetPopularTVShowUseCase: GetPopularTVShowUseCaseProtocol {
    private let repository: TVShowRepository
    
    init(repository: TVShowRepository = TVShowRepositoryImplement()) {
        self.repository = repository
    }
    
    func execute() async throws -> [TVShow] {
        return try await repository.fetchPopularShows()
    }
}
