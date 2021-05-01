//
//  RecipeModel.swift
//  CWC-Recipe List App
//
//  Created by Martin Strzeja on 01.05.21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipeModel = [Recipe]()
    
    init() {
        
        // DataService does not need to be initialized as the function is defined as static in the DataService class
        recipeModel.self = DataService.getLocalDataFromJSONFile()
        
    }
    
}
