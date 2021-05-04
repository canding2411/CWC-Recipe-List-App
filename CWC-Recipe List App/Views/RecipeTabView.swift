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
            
            Text("Featured View")
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
            
        }
        
    }
}

struct RecipeTabBiew_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
