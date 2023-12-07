import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    var category: Category
    var recipes: [Recipe] {
        return recipeVM.recipes.filter { $0.strCategory == category.strCategory }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.strCategory + "s")
    }
}


