//
//  FruitHeader.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 11/27/22.
//

import SwiftUI

struct FruitHeader: View {
    // MARK: PPTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.6)
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
            
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(height: 440)
    }
}


// MARK: PREVIEW
struct FruitHeader_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeader(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
