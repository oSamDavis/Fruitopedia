//
//  FruitCard.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 11/26/22.
//

import SwiftUI

struct FruitCard: View {
    // MARK: - PPTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 20) {
                // MARK: Fruit Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(.black).opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // MARK: Fruit Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(.black).opacity(0.15), radius: 2, x: 2, y: 2)
                // MARK: Fruit Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    .shadow(color: Color(.black).opacity(0.15), radius: 2, x: 2, y: 2)
                // MARK: Button Start
                StartButton()

            } //: VSTACK
            
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 29)
        
    }
}

// MARK: - PREVIEW

struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard(fruit: fruitsData[2])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
