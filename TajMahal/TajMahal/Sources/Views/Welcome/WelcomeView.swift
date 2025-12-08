//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Welcome View
struct WelcomeView: View {
    
    @State private var showMenu = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("TajMahal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .shadow(radius: 5, x: 2, y: 2)
                                
                ShowRestaurantDetails()
                
                Spacer()
                
                Button(action: {
                    showMenu = true
                }) {
                    Text("Accéder au menu")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.FontBold16)
                        .cornerRadius(10)
                        .background(.customRed)
                        .foregroundStyle(Color(.customWhite))
                }
                .buttonStyle(.plain)
                .frame(height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .navigationTitle("Accueil")
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $showMenu) {
                MenuView()
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    WelcomeView()
}

