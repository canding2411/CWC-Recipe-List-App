//
//  DataService.swift
//  CWC-Recipe List App
//
//  Created by Martin Strzeja on 01.05.21.
//

import Foundation

class DataService {
    
    static func getLocalDataFromJSONFile() -> [Recipe] {
    
    // Parse local JSON file
    
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        // Error handling for the Data object
        do {
            
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON Decoder
            let decoder = JSONDecoder()
            
            // Error handling for the Decoder object
            do {
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    
                    r.id = UUID()
                    
                    // Add unique IDs to recipe ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                // Return the recipes
                return recipeData
                
            }
            catch {
                
                // Error while decoding data
                print(error)
            }
           
        }
        catch {
            
            //Error while fetching data
            print(error)
        }
        
        return [Recipe]()
    }
    
}
