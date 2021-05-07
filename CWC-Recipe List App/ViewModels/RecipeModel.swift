//
//  RecipeModel.swift
//  CWC-Recipe List App
//
//  Created by Martin Strzeja on 01.05.21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // DataService does not need to be initialized as the function is defined as static in the DataService class
        recipes.self = DataService.getLocalDataFromJSONFile()
        
    }
    
    // Add static function to calculte the ingredients amount based on selected serving size
    static func calculatePortion(ingredient:Ingredient, recipeServings:Int, targetServings:Int) -> String {
        
        return String(targetServings)
    }
    
}
