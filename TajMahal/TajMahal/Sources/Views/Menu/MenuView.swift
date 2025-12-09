//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// View to display menu as List. All dish have a short view
struct MenuView: View {
    // Reference to the view model that allow to access arrays of apetizer and main course dishes
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                // global background of the view (low layer of the stack)
                Color(.customGrayF1F1F1)
                    .ignoresSafeArea()
                
                List {
                    // Apetizer section
                    MenuSectionView(
                        sectionHeaderTitle: "Entrées",
                        dishArray: viewModel.apetizerArray
                    )
                    .listRowSeparator(.hidden)
                    
                    // Main Course section
                    MenuSectionView(
                        sectionHeaderTitle: "Plats principaux",
                        dishArray: viewModel.mainCourseArray
                    )
                    .listRowSeparator(.hidden)
                    
                }
                .listStyle(.plain)
                .listRowSpacing(12)
                .navigationTitle("Menu")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal, 20)
            }
        }
    }
}

// Preview in light mode
#Preview("light") {
    MenuView()
        .preferredColorScheme(.light)
}

// Preview in dark mode
#Preview("dark") {
    MenuView()
        .preferredColorScheme(.dark)
}

