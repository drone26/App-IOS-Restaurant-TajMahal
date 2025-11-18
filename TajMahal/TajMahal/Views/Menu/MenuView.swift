//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Color(.customGrayF1F1F1)
                        .ignoresSafeArea()
                                
                List {
                    Section {
                        ForEach(viewModel.apetizerArray, id: \.id) { dish in
                            NavigationLink {
                                DishDetailView(dish: dish)
                            } label: {
                                DishShortView(dish: dish)
                                    .background(.white)
                            }
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                    } header: {
                        Text("Entrées")
                            .font(.FontBold14)
                            .foregroundStyle(Color(.customGray666666))
                            .background(.customGrayF1F1F1)
                    }
                    .background(.white)
                    .listRowBackground(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.customGrayF1F1F1)
                    )
                    .listRowSeparator(.hidden)
                    .listRowSpacing(0)
                    .listSectionSpacing(0)
                    .cornerRadius(10)
                    
                    Section {
                        ForEach(viewModel.mainCourseArray, id: \.id) { dish in
                            NavigationLink {
                                DishDetailView(dish: dish)
                            } label: {
                                DishShortView(dish: dish)
                                    .cornerRadius(10)
                            }
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                    } header: {
                        Text("Plats principaux")
                            .font(.FontBold14)
                            .foregroundStyle(Color(.customGray666666))
                            .background(.customGrayF1F1F1)
                    }
                    .background(.white)
                    .listRowBackground(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.customGrayF1F1F1)
                    )
                    .listRowSeparator(.hidden)
                    .listRowSpacing(0)
                    .listSectionSpacing(0)
                    .cornerRadius(10)
                }
                .listStyle(.plain)
                
            }
            .navigationTitle("Menu")
            .font(.FontBold18)
        }
    }
}

#Preview("clair") {
    MenuView()
}

#Preview("sombre") {
    MenuView()
        .preferredColorScheme(.dark)
}

