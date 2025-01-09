//
//  PopularShowsViewModel.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import Foundation
import SwiftUI

final class PopularShowsViewModel: ObservableObject {
    
    @Published var shows: [TVShow] = []
    private let getPopularTVShowUseCase: GetPopularTVShowUseCaseProtocol
    
    init(getPopularTVShowUseCase: GetPopularTVShowUseCaseProtocol = GetPopularTVShowUseCase()) {
        self.getPopularTVShowUseCase = getPopularTVShowUseCase
    }
    
    func loadsPopularShows() {
        Task {
            do {
                let shows = try await getPopularTVShowUseCase.execute()
                await MainActor.run {
                    self.shows = shows
                }
            } catch {
                print(error)
            }
        }
    }
}

