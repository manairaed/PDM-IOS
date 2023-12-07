import SwiftUI

struct RecipeList1: View {
    var recipes: [Recipe1]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            if recipes.isEmpty {
                Text("Loading recipes...")
                    .foregroundColor(.gray)
                    .padding(.top)
            } /*else {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                    ForEach(recipes) { recipe in
                        NavigationLink(destination: RecipeDetailsView(recipe: recipe)) {
                            RecipeCard(recipe: recipe)
                        }
                    }
                }
                .padding(.top)
            }*/
        }
        .padding(.horizontal)
    }
}

struct RecipeList1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList1(recipes: [Recipe1]())
        }
    }
}
