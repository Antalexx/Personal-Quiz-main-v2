//
//  ResultViewController.swift
//  Personal Quiz
//
//  Created by 18992227 on 31.05.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var resultDescription: UILabel!
    
    var answers: [Answer] = []
    
    
    override func viewDidLoad() {
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        let dogCount = answers.filter { $0.type == .dog }.count
        let catCount = answers.filter { $0.type == .cat }.count
        let rabbitCount = answers.filter { $0.type == .rabbit }.count
        let turtleCount = answers.filter { $0.type == .turtle }.count
        
        if dogCount > catCount && dogCount > rabbitCount && dogCount > turtleCount {
            resultLable.text = "ВЫ - \(AnimalType.dog.rawValue)"
            resultDescription.text = AnimalType.dog.definition
        }else if catCount > dogCount && catCount > rabbitCount && catCount > turtleCount {
            resultLable.text = "ВЫ - \(AnimalType.cat.rawValue)"
            resultDescription.text = AnimalType.cat.definition
        }else if rabbitCount > dogCount && rabbitCount > catCount && rabbitCount > turtleCount {
            resultLable.text = "ВЫ - \(AnimalType.rabbit.rawValue)"
            resultDescription.text = AnimalType.rabbit.definition
        }else if turtleCount > dogCount && turtleCount > catCount && turtleCount > rabbitCount {
            resultLable.text = "ВЫ - \(AnimalType.turtle.rawValue)"
            resultDescription.text = AnimalType.turtle.definition
        }else {
            resultLable.text = "👻"
            resultDescription.text = "Вы непонятной породы существо=))) выберете больше значений"
        }
        
        
        super.viewDidLoad()

        
    }
}


