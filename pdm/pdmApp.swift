//
//  pdmApp.swift
//  pdm
//
//  Created by saif on 27/11/2023.
//

import SwiftUI

@main
struct pdmApp: App {
    @StateObject var recipeViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            RecipeContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
