//
//  DishesView.swift
//  Avocados
//
//  Created by bui khac lam on 09/09/2023.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack {
            // 1st Column
            VStack (alignment: .leading, spacing: 4){
                HStack{
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                
                Divider()
                
                HStack{
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tocos")
                }
                
                Divider()
                
                HStack{
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                
                Divider()
                
                
                HStack{
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }

            }
            
            VStack (alignment: .center, spacing: 16){
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }
            }
            
            //3rd Column
            
            
            VStack (alignment: .leading, spacing: 4){
                HStack{
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                    
                }
                
                Divider()
                
                HStack{
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                
                Divider()
                
                HStack{
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                
                HStack{
                    Text("Smoothies")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
                
            }

            
        }
        .font(.system(.callout,design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier : ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 42,height: 42,alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
