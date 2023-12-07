import SwiftUI

struct RecipeDetailsView: View {
    @State private var isFavorite: Bool = false
    @State private var recipe: Recipe?
    @State private var recipeVm: RecipesViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                if let recipe = recipe {
                    AsyncImage(url: URL(string: recipe.strImageSource)) { image in
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
                    .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray]), startPoint: .top, endPoint: .bottom))
                    
                    HStack {
                        Text(recipe.name)
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        Button(action: {
                            isFavorite.toggle()
                        }) {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(isFavorite ? .red : .gray)
                        }
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    
                    if let description = recipe.description, !description.isEmpty {
                        Text(description)
                            .padding(.horizontal)
                    }
                } else {
                    Text("Loading recipe...")
                        .padding()
                }
            }
            .padding(.vertical)
        }
        .onAppear {
            recipeVm.fetchRecipe()
        }
        .ignoresSafeArea(.container, edges: .top)
    }
    
    
    
    
}
