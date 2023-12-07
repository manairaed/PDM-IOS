import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    
    var category: Category
    
    @State private var categories: [Category] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(categories, id: \.idCategory) { category in
                    Text(category.strCategory)
                }
            }
        }
        .onAppear {
            fetchCategories()
        }
    }
    
    private func fetchCategories() {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/categories.php") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching categories: \(error.localizedDescription)")
                return
            }
            
            if let data = data {
                do {
                    let result = try JSONDecoder().decode(CategoriesResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.categories = result.categories
                    }
                } catch {
                    print("Error decoding categories: \(error.localizedDescription)")
                }
            }
        }.resume()
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category(idCategory: "1", strCategory: "Dessert"))
            .environmentObject(RecipesViewModel())
    }
}

struct CategoriesResponse: Decodable {
    let categories: [Category]
}
