//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// View to display menu as List. All dish have a short view
struct MenuView: View {
    // Reference to the view model that allow to access arrays of apetizer and mainCourse dishes
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                // global background of the view (low layer of the stack)
                Color(.customGrayF1F1F1)
                        .ignoresSafeArea()
                                
                // Menu list
                List {
                    // apetizer section
                    Section {
                        // Add dish links and short view for each apetizer
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
                    
                    // mainCourseArray section
                    Section {
                        // Add dish links and short view for each mainCourse
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

// Preview in light mode
#Preview("clair") {
    MenuView()
        .preferredColorScheme(.light)
}

// Preview in dark mode
#Preview("sombre") {
    MenuView()
        .preferredColorScheme(.dark)
}

