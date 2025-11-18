//
//  RestaurantDescriptionLineView.swift
//  TajMahal
//
//  Created by Mathieu ARRIO on 06/11/2025.
//

import SwiftUI

struct RestaurantDescriptionLineView: View {
    let imagePath: ImageSource
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack {
            switch imagePath {
            case .asset(let name):
                Image(name)
                    .resizable()
                    .foregroundStyle(Color(.customGray666666)) // Color #666666
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 14, height: 14)
            case .system(let name):
                Image(systemName: name)
                    .resizable()
                    .foregroundStyle(Color(.customGray666666)) // Color #666666
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 14, height: 14)
            }
            Text(leftText)
                .font(.FontSemiBold12)
                .foregroundColor(.customGray666666)
            Spacer()
            Text(rightText)
                .font(.FontSemiBold12)
                .foregroundColor(.customGray666666)
        }
    }
}

#Preview {
    RestaurantDescriptionLineView(imagePath: .system(name: "clock") , leftText: "Mardi", rightText: "12h00-15h00")
    RestaurantDescriptionLineView(imagePath: .asset(name: "type-service") , leftText: "Mardi", rightText: "12h00-15h00")
}
