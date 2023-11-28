//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by Asil Arslan on 7.01.2022.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
