//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Mathieu ARRIO on 10/11/2025.
//

import SwiftUI

struct DishDetailView: View {
    var dish: Dish
    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                
                Image(dish.imageName)
                    .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0), resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .shadow(radius: 5, x: 2, y: 2)
            
                HStack {
                    SpicinessView(size: 14, spiceLevel: dish.spiceLevel)
                }
                .padding(4)
                .background(Color.white)
                .clipShape(Capsule())
                .padding(12)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Allergènes :")
                    .font(.FontSemiBold12)
                    .foregroundColor(.customGray666666)
                Text(dish.allergens)
                    .font(.FontRegular12)
                    .foregroundColor(.customGray666666)
                
                Divider()
                
                Text("Ingrédients :")
                    .font(.FontSemiBold12)
                    .foregroundColor(.customGray666666)
                Text(dish.ingredients)
                    .font(.FontRegular12)
                    .foregroundColor(.customGray666666)
            }
            .padding(.top, 32)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .navigationTitle(dish.name)
    }
}

#Preview("Chicken Tikka Masala") {
    DishDetailView(dish: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala"))
}

#Preview("Rogan Josh") {
    DishDetailView(dish: Dish(name: "Rogan Josh", description: "Agneau mijoté dans une sauce épicée", allergens: "Ail, oignon", ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", spiceLevel: .hot, imageName: "Rogan Josh"))
}
