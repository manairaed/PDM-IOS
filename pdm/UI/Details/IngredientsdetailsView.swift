//
//  IngredientsdetailsView.swift
//  pdm
//
//  Created by wassim on 30/11/2023.
//

import SwiftUI

struct IngredientsDetailsView: View {
    @State private var isFavorite: Bool = false
    var ingredient: Ingredients

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                AsyncImage(url: URL(string: ingredient.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 100, alignment: .center)
                        .foregroundColor(.white.opacity(0.7))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(height: 300)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))

                HStack {
                    Text(ingredient.name)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)

                    Spacer()

                    Button(action: {
                        isFavorite.toggle()
                    }) {
                        Image(systemName: isFavorite ? "plus.circle" : "plus.circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isFavorite ? .green : .blue)
                    }
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity)

                Text("Categorie: \(ingredient.category)")
                    .padding(.horizontal)
                    .offset(x: -30)
                Spacer()

                Text("Calories: \(ingredient.calories)")
                    .padding(.horizontal)
                    .offset(x: -130)
                Spacer()

                Text("Carbs: \(ingredient.carbo)")
                    .padding(.horizontal)
                    .offset(x: -140)
                Spacer()

                Text("Proteine: \(ingredient.proteine)")
                    .padding(.horizontal)
                    .offset(x: -130)
                Spacer()
            }
            .padding(.vertical)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct IngredientsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsDetailsView(ingredient: Ingredients.all[0])
    }
}

