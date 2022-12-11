//
//  FruitDetailScreen.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 11/27/22.
//

import SwiftUI

struct FruitDetailScreen: View {
    // MARK: PPTIES
    var fruit: Fruit
    
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20 ) {
                    
                    // MARK: HEADER
                    FruitHeader(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // MARK: TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // MARK: HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: NUTRIENTS
                        FruitNutrients(fruit: fruit)
                        
                        
                        // MARK: SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // MARK: DESCRIPTION
                        Text( fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: LINK
                        SourceLink()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VSTACK (for ipad optimization)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                    
                } //: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
            
        } //: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

// MARK: PREVIEW
struct FruitDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailScreen(fruit: fruitsData[0])
    }
}
