//
//  RipenningStagesView.swift
//  Avocados
//
//  Created by bui khac lam on 14/09/2023.
//

import SwiftUI

struct RipenningStagesView: View {
    
    //MARK: - PROPERTIES
    
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

struct RipenningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipenningStagesView(ripeningState: ripeningData)
    }
}
