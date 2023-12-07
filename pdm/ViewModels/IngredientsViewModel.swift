//
//  IngredientsViewModel.swift
//  pdm
//
//  Created by wassim on 30/11/2023.
//

import Foundation

class IngredientsViewModel: ObservableObject {
    @Published private(set) var ingredients: [Ingredients] = Ingredients.all
    
    init() {
    }
    
    
}
