//
//  MenuSectionView.swift
//  TajMahal
//
//  Created by Mathieu ARRIO on 19/11/2025.
//

import SwiftUI

struct MenuSectionView: View {
    var sectionHeaderTitle: String
    var dishArray: [Dish]
    
    var body: some View {
        Section {
            ForEach(dishArray, id: \.id) { dish in
                // Link to the dish detail
                NavigationLink {
                    DishDetailView(dish: dish)
                } label: {
                    DishShortView(dish: dish)
                }
                .listRowBackground( RoundedRectangle(cornerRadius: 10)
                    .fill(Color.customWhite)
                )
                .listRowInsets(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
            }
        } header: {
            Text(sectionHeaderTitle)
                .font(.FontBold14)
                .foregroundStyle(Color(.customGray666666))
        }
    }
}
