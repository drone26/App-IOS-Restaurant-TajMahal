//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
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
            RestaurantDescriptionLineView(imagePath: .system(name: "clock"), leftText: "Mardi", rightText: "11h30 - 14h30 ・ 18h30 - 22h00")
            RestaurantDescriptionLineView(imagePath: .asset(name: "type-service"), leftText: "Type de service", rightText: "À emporter")
            RestaurantDescriptionLineView(imagePath: .asset(name: "position"), leftText: "12 Avenue de la Brique - 75010 Paris", rightText: "")
            RestaurantDescriptionLineView(imagePath: .system(name: "globe"), leftText: "www.tajmahal.fr", rightText: "")
            RestaurantDescriptionLineView(imagePath: .asset(name: "custom-phone"), leftText: "06 12 34 56 78", rightText: "")
        }
    }
}

#Preview {
    WelcomeView()
}

