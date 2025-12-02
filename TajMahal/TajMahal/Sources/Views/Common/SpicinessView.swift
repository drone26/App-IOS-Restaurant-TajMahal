//
//  SpicinessView.swift
//  TajMahal
//
//  Created by Mathieu ARRIO on 10/11/2025.
//

import SwiftUI

// View to display spiciness level (3 levels)
struct SpicinessView: View {
    var size: Int
    var spiceLevel: SpiceLevel
    
    var body: some View {
        
        // first spicy
        Image("spicy")
            .foregroundColor(.customRed)
        
        // second spicy
        switch spiceLevel {
        case .medium, .hot:
            Image("spicy")
                .foregroundColor(.customRed)
        case .light:
            Image("spicy")
                .foregroundColor(.customGrayDADADA)
        }
        
        // third spicy
        switch spiceLevel {
        case .hot:
            Image("spicy")
                .foregroundColor(.customRed)
        case .medium, .light:
            Image("spicy")
                .foregroundColor(.customGrayDADADA)
        }
    }
}

#Preview {
    HStack {
        SpicinessView(size: 40, spiceLevel: .light)
    }
    HStack {
        SpicinessView(size: 40, spiceLevel: .medium)
    }
    HStack {
        SpicinessView(size: 40, spiceLevel: .hot)
    }
}
