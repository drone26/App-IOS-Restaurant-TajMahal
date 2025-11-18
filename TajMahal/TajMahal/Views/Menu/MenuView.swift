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
                        
                        NavigationLink {
                            Text("Vue des plats")
                        } label: {
                            DishShortView(dish: viewModel.apetizerArray[0])
                                .background(.white)
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                        NavigationLink {
                            Text("Vue des plats")
                        } label: {
                            DishShortView(dish: viewModel.apetizerArray[1])
                                .background(.white)
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
                        NavigationLink {
                            Text("Vue des plats")
                        } label: {
                            DishShortView(dish: viewModel.mainCourseArray[0])
                                .background(.white)
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                        NavigationLink {
                            Text("Vue des plats")
                        } label: {
                            DishShortView(dish: viewModel.mainCourseArray[1])
                                .background(.white)
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

#Preview {
    MenuView()
}
