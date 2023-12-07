//
//  MyRecipeView.swift
//  pdm
//
//  Created by Manairaed on 29/11/2023.
//

import SwiftUI

struct MyRecipeView: View {
    var body: some View {
        NavigationView {
            Text("MyRecipeView")
                .navigationTitle("MyRecipeView")
        }
        .navigationViewStyle(.stack)
    }
}

struct MyRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        MyRecipeView()
    }
}

