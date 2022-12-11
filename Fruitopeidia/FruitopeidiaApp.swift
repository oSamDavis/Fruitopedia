//
//  FruitopeidiaApp.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 11/26/22.
//

import SwiftUI

@main
struct FruitopeidiaApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingScreen()
            }
            else {
                ContentView()
            }

        }
    }
}
