//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by bui khac lam on 07/09/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    var ripeningState : [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            Spacer()
            VStack(content: {
                HStack(alignment: .center, content: {
                    ForEach(ripeningState, content: { item in
                        RipeningView(ripening: item)
                    })
                })
            })
            .padding(.vertical)
            .padding(.horizontal,25)
            Spacer()
        })
        .edgesIgnoringSafeArea(.all)
    }

}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
