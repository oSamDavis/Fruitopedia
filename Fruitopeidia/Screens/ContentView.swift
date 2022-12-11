//
//  ContentView.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 11/26/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: PPTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruitItem in
                    NavigationLink(destination: FruitDetailScreen(fruit: fruitItem)){
                        FruitRow(fruit: fruitItem)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                Button(action:{
                isShowingSettings = true
                
            }) {
                Image(systemName: "slider.horizontal.3")
            } //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsScreen()
                }
            )
        } //: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
