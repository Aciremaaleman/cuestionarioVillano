//
//  Answer.swift
//  villanoCuestionario
//
//  Created by Apple Device 8 on 10/12/19.
//  Copyright © 2019 Gabriela Lopez Fuentes. All rights reserved.
//

import Foundation
struct Answer {
    var text : String
    var type: Type
}
enum Type {
    case Malefica, Hades, Scar, Izma
    var definition : String{
        switch self {
        case .Malefica:
            return "Eres Malefica"
        case .Hades:
            return "Eres Hades"
        case .Scar:
            return "Eres Scar"
        default:
            return "Eres Izma"
        }
    }
}
