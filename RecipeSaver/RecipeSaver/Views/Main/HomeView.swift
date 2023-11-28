//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Asil Arslan on 7.01.2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipeVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
