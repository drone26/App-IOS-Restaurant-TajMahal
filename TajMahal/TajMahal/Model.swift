//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Représente la source des images (Asset / system image)
enum ImageSource: Hashable {
    case asset(name: String)      // Pour les images de Assets.xcassets
    case system(name: String)     // Pour les SF Symbols (system images)
}

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel {
    case light
    case medium
    case hot
}

// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish {
    var id: UUID = UUID()
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price: Float
}

// Représente l'objet "détail" du restaurant
struct RestaurantDetail: Hashable {
    var id: UUID = UUID()
    var logoName: ImageSource
    var column1: String
    var column2: String
}

// Représente l'objet "restaurant" qui figure sur la Welcome View
struct Restaurant: Hashable {
    var id: UUID = UUID()
    var name: String
    var type: String
    var details: [RestaurantDetail]
}
