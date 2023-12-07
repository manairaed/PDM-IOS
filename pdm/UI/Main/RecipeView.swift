import SwiftUI

struct RecipeView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipeVM.recipes)
            }
            .navigationTitle("Recipes")
        }
        .onAppear {
            recipeVM.fetchRecipes()
        }
        .navigationViewStyle(.stack)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
            .environmentObject(RecipesViewModel())
    }
}

