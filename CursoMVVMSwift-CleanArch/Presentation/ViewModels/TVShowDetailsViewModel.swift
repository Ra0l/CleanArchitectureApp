//
//  TVShowDetailsViewModel.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import SwiftUI

final class TVShowDetailsViewModel: ObservableObject {
    @Published var details: TVShowDetails?
    var showId: Int = 0
    private let getTVShowDetailsUseCase: GetTVShowDetailsUseCaseProtocol
    
    init(id: Int, getTVShowDetailsUseCase: GetTVShowDetailsUseCaseProtocol = GetTVShowDetailsUseCase()){
        self.showId = id
        self.getTVShowDetailsUseCase = getTVShowDetailsUseCase
    }
    
    func loadTVShowDetails(id: Int) async {
        do {
          let details = try await getTVShowDetailsUseCase.execute(id: id)
            await MainActor.run {
                self.details = details
            }
        } catch {
            print(error)
        }
    }
}
     
