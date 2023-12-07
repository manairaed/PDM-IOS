//
//  TabBar.swift
//  pdm
//
//  Created by Manairaed on 29/11/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            RecipeView()
                .tabItem{
                    Label("Recipe", systemImage: "book")
                }
            
         
            
            NewRecipeView()
                .tabItem{
                    Label("New", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
            
            MyRecipeView()
                .tabItem{
                    Label("My Recipe", systemImage: "list.bullet")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}

