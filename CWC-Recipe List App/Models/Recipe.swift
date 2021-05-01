//
//  Recipe.swift
//  CWC-Recipe List App
//
//  Created by Martin Strzeja on 01.05.21.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    // MARK: Setting properties of Recipe class following recipes.json
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]
    var directions: [String]
    
}
