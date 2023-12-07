import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    
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
                ProgressView("Loading recipes...")
                    .foregroundColor(.gray)
                    .padding(.top)
            } else {
                ScrollView {
                    LazyVStack(spacing: 15) {
                        ForEach(recipes) { recipe in
                            NavigationLink(destination: RecipeDetailsView()) {
                                RecipeCard(recipe: recipe)
                            }
                        }
                    }
                    .padding(.top)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(recipes: [])
    }
}
