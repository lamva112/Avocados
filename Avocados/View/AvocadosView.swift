//
//  AvocadosView.swift
//  Avocados
//
//  Created by bui khac lam on 07/09/2023.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: - PROPERTIES
    
    @State private var pulstateAnimation: Bool = true
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240,height: 240)
                .shadow(color: Color("ColorBlackTransparentLight"), radius: 12,x: 0,y: 0)
                .scaleEffect(self.pulstateAnimation ? 1 : 0.9)
                .opacity(self.pulstateAnimation ? 1 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true), value: UUID())

            VStack {
                Text("Avocados")
                    .font(.system(size: 42,weight: .bold,design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                .shadow(color: Color("ColorBlackTransparentLight"), radius: 12,x: 0,y: 4)
                                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline,design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640,minHeight: 120)
            }
            .padding()
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulstateAnimation.toggle()
        })
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .previewDevice("iPhone 11 Pro")
            //.environment(\.colorScheme, .dark)
    }
}
