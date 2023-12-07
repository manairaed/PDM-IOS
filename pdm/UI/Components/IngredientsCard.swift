//
//  IngredientsCard.swift
//  pdm
//
//  Created by wassim on 30/11/2023.
//

import SwiftUI

struct IngredientsCard: View {
    @State private var isFavorite: Bool = false
    var ingredient: Ingredients

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: ingredient.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        HStack {
                            Text(ingredient.name)
                                .font(.headline)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x: 0, y: 0)
                                .padding()
                            
                            
                            
                            Button(action: {
                                isFavorite.toggle()
                            }) {
                                Image(systemName: isFavorite ? "plus.circle.fill" : "plus.circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(isFavorite ? .green : .blue)
                            }
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .overlay(alignment: .bottom) {
                        Text(ingredient.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct IngredientsCard_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsCard(ingredient: Ingredients.all[0])
    }
}
