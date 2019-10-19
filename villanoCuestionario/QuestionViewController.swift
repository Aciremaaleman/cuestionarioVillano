//
//  QuestionViewController.swift
//  villanoCuestionario
//
//  Created by Apple Device 8 on 10/12/19.
//  Copyright © 2019 Gabriela Lopez Fuentes. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
   @IBOutlet weak var buttonStackView: UIStackView!
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var RangeStackView: UIStackView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
//    var questions = ["Te consideras?", "Tus actos malvados los haces por?", "Escoge los colores de tu atuendo perfecto"]
    
    var questions :[Question] = [
        Question(text:"Te consideras?", type: .single, answers: [
            Answer(text: "Calculador", type:.Malefica),
            Answer(text: "Explosivio", type:.Hades),
            Answer(text: "Vengativo", type:.Scar),
            Answer(text: "Egoista", type: .Izma)
            ]),
        Question(text:"Escoge los colores de tu atuendo perfecto", type: .multiple, answers: [
        Answer(text: "Morado", type:.Malefica),
        Answer(text: "Azul", type:.Hades),
        Answer(text: "Marron", type:.Scar),
        Answer(text: "Magenta", type: .Izma)
        ]),
        Question(text:"Tus actos malvados los haces por?", type: .ranged, answers: [
        Answer(text: "Diversion", type:.Malefica),
        Answer(text: "Control total", type:.Hades),
        ]),
    ]

    
    var questionIndex = 0
    func updateUI(){
        buttonStackView.isHidden = true
        multipleStackView.isHidden = true
        RangeStackView.isHidden = true
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let numberQuestion = questions[questionIndex]
        switch numberQuestion.type {
        case .single:
            navigationItem.title
        case .multiple:
             "Question 2"
        case .ranged:
             "question 3"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
