//
//  IngredientsView.swift
//  pdm
//
//  Created by wassim on 30/11/2023.
//

import SwiftUI

struct IngredientsView: View {
    @EnvironmentObject var ingredientsVM: IngredientsViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                IngredientsList(ingredients: Ingredients.all)
            }
            .navigationTitle("Ingrédients")
        }
        .navigationViewStyle(.stack)
    }
}

struct IngredientsViewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView()
            .environmentObject(IngredientsViewModel())
    }
}
