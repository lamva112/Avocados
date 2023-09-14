//
//  FactModel.swift
//  Avocados
//
//  Created by bui khac lam on 10/09/2023.
//

import SwiftUI

//MARK: - FACT MODEL

struct Fact : Identifiable {
    var id = UUID()
    var image : String
    var content : String
}
