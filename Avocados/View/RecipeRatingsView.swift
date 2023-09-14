//
//  RecipeRatingsView.swift
//  Avocados
//
//  Created by bui khac lam on 12/09/2023.
//

import SwiftUI

struct RecipeRatingsView: View {
    
    var recipe: Recipe
    
    var body: some View {
        HStack (alignment: .center, spacing: 5){
            ForEach(1...(recipe.rating),id:\.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(Color.yellow)
            }
        }    }
}

struct RecipeRatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingsView(recipe: recipesData[1])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
