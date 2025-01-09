//
//  GetTVShowDetailsUseCaseProtocol.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import Foundation

//MARK: - GetTVShowDetailsUseCaseProtocol

protocol GetTVShowDetailsUseCaseProtocol {
    func execute(id: Int) async throws -> TVShowDetails
}

//MARK: - GetTVShowDetailsUseCase

final class GetTVShowDetailsUseCase: GetTVShowDetailsUseCaseProtocol {
    
    private let repository: TVShowRepository
    
    init(repository: TVShowRepository = TVShowRepositoryImplement()) {
        self.repository = repository
    }
    
    func execute(id: Int) async throws -> TVShowDetails {
        return try await repository.fetchShowDetails(id: id)
    }
}
