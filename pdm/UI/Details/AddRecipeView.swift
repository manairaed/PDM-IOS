import SwiftUI

/*struct AddRecipeView: View {
    typealias Body = <#type#>
    
    
    /*@EnvironmentObject var recipeVM: RecipesViewModel
    
    @State private var name: String = ""
    //@State private var selectedCategory: Category = Category.self
    @State private var description: String = ""
    @State private var navigateToRecipe = false
    @State private var image: UIImage? = nil
    @State private var showImagePicker = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationView {
            Form {
                
                Section(header: Text("Image")) {
                    if let image = image {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                    }

                    Button("Add Image") {
                        showImagePicker.toggle()
                    }
                    .sheet(isPresented: $showImagePicker) {
                        ImagePicker(image: $image)
                    }
                }
                
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name)
                }
                
                /*Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }.pickerStyle(.menu)
                }*/
                
                Section(header: Text("Description")){
                    TextEditor(text: $description)
                        .frame(height: 100)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeDetailsView(recipe: recipeVM.recipes.sorted{ $0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }.disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
                .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)

        var imageData: Data?
        
        if let selectedImage = image {
            imageData = selectedImage.jpegData(compressionQuality: 0.5)
        }

        let base64Image = imageData?.base64EncodedString() ?? ""
        
        let recipe = Recipe(name: name, image: base64Image, description: description, category: selectedCategory.rawValue, datePublished: datePublished)
        recipeVM.addRecipe(recipe: recipe)
    }*/
    struct AddRecipeView_Previews: PreviewProvider {
        static var previews: some View {
            AddRecipeView()
                .environmentObject(RecipesViewModel())
        }
    }
}
*/

