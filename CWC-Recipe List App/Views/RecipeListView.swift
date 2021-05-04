//
//  ContentView.swift
//  CWC-Recipe List App
//
//  Created by Martin Strzeja on 01.05.21.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {

        NavigationView {
            
            List(model.recipes) { recipe in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: recipe),
                    label: {
                        HStack {
                            
                            Image(recipe.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(6.0)
                            Text(recipe.name)
                        }
                    })
                
            }.navigationBarTitle("All Recipes")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
