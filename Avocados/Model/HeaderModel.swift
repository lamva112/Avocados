//
//  HeaderModel.swift
//  Avocados
//
//  Created by bui khac lam on 09/09/2023.
//

import SwiftUI

//MARK: - HEADER MODEL
struct Header: Identifiable {
    var id = UUID()
    var image : String
    var headline : String
    var subheadline : String 
}
