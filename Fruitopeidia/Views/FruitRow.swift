//
//  FruitRow.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 11/27/22.
//

import SwiftUI

struct FruitRow: View {
    // MARK: PPTIES
    var fruit: Fruit
    
    
    // MARK: BODY
    var body: some View {
        HStack {
            // rendering mode original to avoid colorization when embedded in a Navigation link
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width:80, height: 80, alignment: .center)
                .shadow(color: Color(.black).opacity(0.3) ,  radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } //: VSTACK
            
        }//: HSTACK
    }
}



// MARK: PREVIEW
struct FruitRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitRow(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
