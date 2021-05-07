//
//  RecipeFeaturedView.swift
//  CWC-Recipe List App
//
//  Created by Martin Strzeja on 04.05.21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Featured Recipes")
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading)
            
            GeometryReader { geo in
                
                TabView {
                    
                    // Loop through all recipes
                    ForEach(0..<model.recipes.count) { index in
                        
                        if model.recipes[index].featured == true {
                        
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(.white)
                             
                                VStack(spacing: 0.0) {
                                    
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .clipped()
                                        .aspectRatio(contentMode: .fill)
                                    Text(model.recipes[index].name)
                                        .padding(5)
                                }
                                
                            }
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .shadow(color: Color(.sRGB, red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: 0, opacity: 0.6), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -5.0, y: 5.0)
                            
                        }
                        
                    }
                    
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            }
            
            VStack(alignment: .leading, spacing: 10.0) {
                
                Text("Preperation Time:")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Hearty")
                
            }
            .padding([.leading, .bottom])
        }
        
        
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
