//
//  RecipetCardView.swift
//  Avocados
//
//  Created by bui khac lam on 12/09/2023.
//

import SwiftUI




struct RecipetCardView: View {
    //MARK: - PROPERTIES

    var recipe: Recipe
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            //CARD NAME
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(content: {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2,x: 0,y: 0)
                            .padding(.trailing,20)
                            .padding(.top,22)
                            Spacer()
                        }
                    }
                })
            
            VStack(alignment: .leading,spacing: 12 ){
                    //TITLE
                    
                    Text(recipe.title)
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenMedium"))
                        .lineLimit(1)
                    
                    //HEADLINE
                    
                    Text(recipe.headline)
                        .font(.system(.body,design: .serif))
                        .foregroundColor(Color.gray)
                        .italic()
                    
                    //RATES
                    
                    RecipeRatingsView(recipe: recipe)

                    
                    //COOKING
                    
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom,12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"),radius: 8,x: 0,y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel = true
        }
        .sheet(isPresented: self.$showModel, content: {
            RecipeDetailView(recipe: self.recipe)
        })
    }
}

struct RecipetCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipetCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
