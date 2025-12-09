//
//  DishShortView.swift
//  TajMahal
//
//  Created by Mathieu ARRIO on 09/11/2025.
//

import SwiftUI

// View to display short details of a dish (tiny image, description, spicy level)
struct DishShortView: View {
    var dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 86, alignment: .center)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(dish.name)
                    .font(.FontSemiBold14)
                    .foregroundColor(.customGray666666)
                    .padding(.bottom, 2)
                
                Text(dish.description)
                    .font(.FontRegular12)
                    .foregroundColor(.customGray666666)
                
                HStack {
                    // Currency in euro and decimal format for France
                    Text(dish.price, format: .currency(code: "EUR"))
                        .environment(\.locale, Locale(identifier: "fr_FR"))
                        .font(.FontSemiBold12)
                        .foregroundColor(.customGray666666)
                    
                    Spacer()
                    
                    SpicinessView(size: 12, spiceLevel: dish.spiceLevel)
                }
            }
        }
    }
}

#Preview {
    VStack {
        DishShortView(dish: Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: 5.5))
        DishShortView(dish: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: 13.0))
        DishShortView(dish: Dish(name: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", allergens: "Noix de cajou, riz", ingredients: "Riz basmati, légumes assortis (carottes, petits pois, haricots verts), noix de cajou, raisins secs, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre", spiceLevel: .medium, imageName: "Biryani", price: 10.5))
        DishShortView(dish: Dish(name: "Rogan Josh", description: "Agneau mijoté dans une sauce épicée", allergens: "Ail, oignon", ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", spiceLevel: .hot, imageName: "Rogan Josh", price: 12.0))
    }
}
