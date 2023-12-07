//
//  ContentView.swift
//  pdm
//
//  Created by Manairaed on 29/11/2023.
//

import SwiftUI

struct RecipeContentView: View {
    @EnvironmentObject var ingredientsViewModel: IngredientsViewModel
    var body: some View {
        TabBar()
    }
}

struct RecipeContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeContentView()
            .environmentObject(RecipesViewModel())
            .environmentObject(IngredientsViewModel())
    }
}

