//
//  IngredientsModel.swift
//  pdm
//
//  Created by wassim on 30/11/2023.
//

import Foundation

enum CategoryIng: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    case fruit = "Fruit et Légumes"
    case cerealiers = "Céréaliers et Légumineuses"
    case laitiers = "Produits Laitiers"
    case viande = "Viande"
    case poisson = "Poisson"
    case fruitMer = "Fruits de mer"
    
}

struct Ingredients: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let category: CategoryIng.RawValue
    let calories: Int
    let carbo: Int
    let proteine: Int
    let fats: Int
    
}

extension Ingredients {
    static let all: [Ingredients] = [
        Ingredients(
            name: "Ouefs",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMC7suDk-QrXW3UbXn9RjqFLHSTesq8k0ltw&usqp=CAU",
            category: "Céréaliers et Légumineuses",
            calories: 50,
            carbo: 2,
            proteine: 6,
            fats: 1
        )
        ]
}
