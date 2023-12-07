import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        fetchRecipes()
    }
    
    func fetchRecipes() {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/random.php") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            if let error = error {
                print("Error fetching recipes: \(error)")
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let response = try decoder.decode(RecipesResponse.self, from: data)
                
                DispatchQueue.main.async {
                    self?.recipes = response.meals ?? []
                }
            } catch {
                print("Error decoding recipes: \(error)")
            }
        }.resume()
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
