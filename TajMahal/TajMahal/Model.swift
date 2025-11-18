//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Enumerate image source (Asset / system image)
enum ImageSource: Hashable {
    case asset(name: String)      // image from project's asset
    case system(name: String)     // Image from SF Symbols (system images)
}

// Enumerate the 3 spiciness levels
enum SpiceLevel {
    case light
    case medium
    case hot
}

// Describe Dish object for the restaurant menu
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

// Describe Restaurant Details object for the restaurant
struct RestaurantDetail: Hashable {
    var id: UUID = UUID()
    var logoName: ImageSource
    var column1: String
    var column2: String
}

// Describe Restaurant object
struct Restaurant: Hashable {
    var id: UUID = UUID()
    var name: String
    var type: String
    var details: [RestaurantDetail]
}
