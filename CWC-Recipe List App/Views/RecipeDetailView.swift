//
//  RecipeDetailView.swift
//  CWC-Recipe List App
//
//  Created by Martin Strzeja on 01.05.21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                // MARK: Recipe image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Ingredients
                VStack(alignment: .leading) {
                    
                    Text("Ingredients")
                        .font(.headline)
                    
                    ForEach(recipe.ingredients) { ingredient in
                        
                        Text("• " + ingredient.name)
                            .padding(.vertical, 2.0)
                        
                    }

                }
                .padding(.leading)
                
                // MARK: Divider
                Divider()
                
                // MARK: Directions
                VStack(alignment: .leading) {
                    
                    Text("Directions")
                        .font(.headline)
                    
                    ForEach(0...recipe.directions.count - 1, id: \.self) { r in
                        
                        Text(String(r) + ". " + recipe.directions[r])
                            .padding(.vertical, 2.0)
                            .fixedSize(horizontal: false, vertical: true)
                            
                        
                    }
                    
                }
                .padding(.leading)
                
            }

        }
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let dummyRecipe = RecipeModel()
        
        RecipeDetailView(recipe: dummyRecipe.recipes[0])
    }
}
