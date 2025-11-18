//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Welcome View
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("TajMahal")
                    .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0), resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .shadow(radius: 5, x: 2, y: 2)
                
                Spacer()
                
                ShowRestaurantDetails()
                
                Spacer()
                
                NavigationLink {
                    MenuView()
                } label: {
                    Text("Accéder au menu")
                        .font(.FontBold16)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(.customRed)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct ShowRestaurantDetails: View {
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Restaurant indien")
                    .font(.FontRegular12)
                    .foregroundColor(.customGray666666)
                Text("Le Taj Mahal")
                    .font(.FontBold18)
                    .foregroundColor(.customGray666666)
            }
            
            Spacer()
            
            Image("LogoWelcome")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color(.customGray9A9A9A))
        }
        //.padding(.horizontal, 20)
        
        Spacer()
        
        VStack(alignment: .leading) {
            ForEach(viewModel.restaurant.details, id: \.id) { detail in
                RestaurantDescriptionLineView(
                    imagePath: detail.logoName,
                    leftText: detail.column1,
                    rightText: detail.column2
                )
            }
        }
    }
}

#Preview {
    WelcomeView()
}

