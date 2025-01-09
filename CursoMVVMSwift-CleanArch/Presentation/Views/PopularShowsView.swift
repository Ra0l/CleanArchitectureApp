//
//  PopularShowsView.swift
//  CursoMVVMSwift-CleanArch
//
//  Created by Raul Kevin Aliaga Shapiama on 1/9/25.
//

import SwiftUI

struct PopularShowsView: View {
    @StateObject var viewModel = PopularShowsViewModel()
    var body: some View {
        List(viewModel.shows, id: \.id) { show in
            Text(show.name)
        }
        .onAppear {
            viewModel.loadsPopularShows()
        }
    }
}

#Preview {
    PopularShowsView()
}
