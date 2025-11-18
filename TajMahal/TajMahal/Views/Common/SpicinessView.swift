//
//  SpicinessView.swift
//  TajMahal
//
//  Created by Mathieu ARRIO on 10/11/2025.
//

import SwiftUI

struct SpicinessView: View {
    var size: Int
    var spiceLevel: SpiceLevel
    
    var body: some View {
        Image("spicy")
            .foregroundColor(.customRed)
        
        switch spiceLevel {
        case .medium, .hot:
            Image("spicy")
                .foregroundColor(.customRed)
        case .light:
            Image("spicy")
                .foregroundColor(.customGrayDADADA)
        }
        
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
