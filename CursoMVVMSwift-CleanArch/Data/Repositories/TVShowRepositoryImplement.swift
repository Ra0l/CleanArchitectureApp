//
//  TVShowRepositoryImplement.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import Foundation

//MARK: - TVShowRepositoryImplement

final class TVShowRepositoryImplement: TVShowRepository {
    
    private let apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    func fetchPopularShows() async throws -> [TVShow] {
        let response: PopularShowResponse = try await apiClient.request(endpoint: .popularShows)
        return response.results
    }
    
    func fetchShowDetails(id: Int) async throws -> TVShowDetails {
        return try await apiClient.request(endpoint: .tvShowDetails(id: id))
    }
}
