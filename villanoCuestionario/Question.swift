//
//  Question.swift
//  villanoCuestionario
//
//  Created by Apple Device 8 on 10/12/19.
//  Copyright © 2019 Gabriela Lopez Fuentes. All rights reserved.
//

import Foundation

//text: String
//type: ResponseType
//answers: [Answer]

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType{
    case single, multiple, ranged
}


