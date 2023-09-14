//
//  SettingsView.swift
//  Avocados
//
//  Created by bui khac lam on 07/09/2023.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = true
    
    var body: some View {
        VStack (alignment: .center, spacing: 0){
            
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
              Image("avocado")
                .resizable()
                .scaledToFit()
                .padding(.top)
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
              
              Text("Avocados".uppercased())
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
              // MARK: - SECTION #1
              Section(header: Text("General Settings")) {
                Toggle(isOn: $enableNotification) {
                  Text("Enable notifiacation")
                }
                
                Toggle(isOn: $backgroundRefresh) {
                  Text("Background refresh")
                }
                  
              }
              
              //MARK: - SECTION #2
                
              Section(header: Text("Application"), content: {
                  if enableNotification {
                      HStack( content: {
                          Text("Product").foregroundColor(Color.gray)
                          Spacer()
                          Text("Avocado Recipes")
                      })
                      HStack( content: {
                          Text("Compatibility").foregroundColor(Color.gray)
                          Spacer()
                          Text("iPhone & iPad")
                      })
                      
                      HStack(content:{
                          Text("Developer").foregroundColor(Color.gray)
                          Spacer()
                          Text("Lam Bui")
                      })
                      
                      HStack(content:{
                          Text("Designer").foregroundColor(Color.gray)
                          Spacer()
                          Text("Lam Khac")
                      })
                      
                      HStack(content:{
                          Text("Website").foregroundColor(Color.gray)
                          Spacer()
                          Text("lamkhac.com")
                      })
                      
                      HStack(content: {
                          Text("Version").foregroundColor(Color.gray)
                          Spacer()
                          Text("1.0.0")
                      })
                  } else {
                      HStack{
                          Text("Personal message").foregroundColor(Color.gray)
                          Spacer()
                          Text("Happy Coding!")
                      }
                  }
                  
                  
              })
            
            }.padding(.horizontal,-16)
            
            
            
            
        }
        .frame(maxWidth: 640)
        
    }
    
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView()
        }
    }
}
