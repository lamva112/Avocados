//
//  ripeningModel.swift
//  Avocados
//
//  Created by bui khac lam on 14/09/2023.
//

import SwiftUI

//MARK: - RIPENING MODEL

struct Ripening : Identifiable {
    var id = UUID()
    var image : String
    var stage : String
    var title : String
    var description : String
    var ripeness : String
    var instruction : String
}
