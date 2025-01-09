//
//  DetailView.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import SwiftUI

struct DetailView: View {
    @StateObject private var viewModel: TVShowDetailsViewModel
    
    init(viewModel: TVShowDetailsViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            if let details = viewModel.details {
                Text(details.name)
                    .font(.headline)
                    .padding(.bottom, 20)
                Text(details.overview)
                if !details.genres.isEmpty {
                    Text("Genres:")
                        .font(.subheadline)
                        .padding(.bottom, 5)
                    ForEach(details.genres) { genre in
                        Text(genre.name)
                    }
                }
            } else {
                Text("Cagando ....")
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .onAppear{
            Task {
                await viewModel.loadTVShowDetails(id: viewModel.showId)
            }
        }
    }
}

#Preview {
    //DetailView()
}
