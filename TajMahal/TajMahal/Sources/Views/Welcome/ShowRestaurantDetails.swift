//
//  ShowRestaurantDetails.swift
//  TajMahal
//
//  Created by Mathieu ARRIO on 20/11/2025.
//

import SwiftUI

struct ShowRestaurantDetails: View {
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(viewModel.restaurant.type)
                    .font(.FontRegular12)
                    .foregroundColor(.customGray666666)
                
                Text(viewModel.restaurant.name)
                    .font(.FontBold18)
                    .foregroundColor(.customGray666666)
            }
            
            Spacer()
            
            Image("LogoWelcome")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color(.customGray9A9A9A))
        }
        .padding(.vertical, 26)
        
        VStack(alignment: .leading) {
            ForEach(viewModel.restaurant.details, id: \.id) { detail in
                RestaurantDescriptionLineView(
                    imagePath: detail.logoName,
                    leftText: detail.column1,
                    rightText: detail.column2
                )
                .padding(.bottom, 13)
            }
        }
    }
}

#Preview {
    ShowRestaurantDetails()
}
