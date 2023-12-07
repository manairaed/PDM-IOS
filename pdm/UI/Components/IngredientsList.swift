//
//  IngredientsList.swift
//  pdm
//
//  Created by wassim on 30/11/2023.
//

import SwiftUI

struct IngredientsList: View {
    var ingredients: [Ingredients]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(ingredients.count) \(ingredients.count > 1 ? "ingredients" : "ingredient")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(ingredients) { ingredient in
                    NavigationLink(destination: IngredientsDetailsView(ingredient: ingredient)) {
                        IngredientsCard(ingredient: ingredient)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct IngredientsList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            IngredientsList(ingredients: Ingredients.all)
        }
    }
}
