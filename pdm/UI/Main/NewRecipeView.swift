//
//  NewRecipeView.swift
//  pdm
//
//  Created by Manairaed on 29/11/2023.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    @State private var navigateToIngredientsView = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button("Add recipe manually"){
                               showAddRecipe = true
                           }
                               .navigationTitle("New Recipe")
                               .navigationViewStyle(.stack)
                               .sheet(isPresented: $showAddRecipe) {
                                   AddRecipeView()
                               }

                Spacer()

                Button(action: {
                    navigateToIngredientsView = true
                }) {
                    Text("View Ingredients")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("New Recipe")
        }
        
        .fullScreenCover(isPresented: $navigateToIngredientsView) {
            IngredientsView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}


