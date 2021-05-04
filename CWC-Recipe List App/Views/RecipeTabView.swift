//
//  RecipeTabBiew.swift
//  CWC-Recipe List App
//
//  Created by Martin Strzeja on 04.05.21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {

        TabView {
            
            RecipeFeaturedView()
                .tabItem {
                    
                    VStack {
                        
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    
                    VStack {
                        
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                    
                }
            
        }.environmentObject(RecipeModel())
        
    }
}

struct RecipeTabBiew_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
