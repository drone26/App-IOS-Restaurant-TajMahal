//
//  ViewModel.swift
//  TajMahal
//
//  Created by Amandine Cousin on 07/11/2023.
//

import Foundation

// Describe the view-model (MVVM project)
struct ViewModel {
    
    // Stocke les entrées qui composent le menu du restaurant
    // Store apetizer data for restaurant menu
    let apetizerArray : [Dish] =
    [Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: 5.5),
     Dish(name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", spiceLevel: .medium, imageName: "Pakoras", price: 5.0),
     Dish(name: "Aloo Tikki", description: "Galettes de pommes de terre épicées et croustillantes", allergens: "Sans allergènes majeurs", ingredients: "Pommes de terre, épices, farine de pois chiches", spiceLevel: .medium, imageName: "Aloo", price: 5.5)]
    
    // Store Main Course data for restaurant menu
    let mainCourseArray : [Dish] =
    [Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: 13.0),
     Dish(name: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", allergens: "Noix de cajou, riz", ingredients: "Riz basmati, légumes assortis (carottes, petits pois, haricots verts), noix de cajou, raisins secs, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre", spiceLevel: .medium, imageName: "Biryani", price: 10.5),
     Dish(name: "Rogan Josh", description: "Agneau mijoté dans une sauce épicée", allergens: "Ail, oignon", ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", spiceLevel: .hot, imageName: "Rogan Josh", price: 12.0)]
    
    // Store restaurant data description and details
    let restaurant: Restaurant = Restaurant(
        name: "Le Taj Mahal",
        type: "Restaurant indien",
        details: [
            RestaurantDetail(
                logoName: .system(name: "clock"),
                column1: "Mardi",
                column2: "11h30 - 14h30 ・ 18h30 - 22h00"
            ),
            RestaurantDetail(
                logoName: .asset(name: "type-service"),
                column1: "Type de service",
                column2: "A emporter"
            ),
            RestaurantDetail(
                logoName: .asset(name: "position"),
                column1: "12 Avenue de la Brique - 75010 Paris",
                column2: ""
            ),
            RestaurantDetail(
                logoName: .system(name: "globe"),
                column1: "www.tajmahal.fr",
                column2: ""
            ),
            RestaurantDetail(
                logoName: .asset(name: "custom-phone"),
                column1: "06 12 34 56 78",
                column2: ""
            )
        ]
    )
}
