//
//  ViewController.swift
//  English-Word
//
//  Created by Павел Анплеенко on 25/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var englishWord = ["Apartment", "Actor", "Arm", "Anger", "Ash", "Army", "Action", "Attitude", "Aisle", "After"]
  var russianWord = ["Комната; Квартира", "Актер, Артист", "Рука", "Гнев", "Зола, Пепел; Прах", "Армия", "Поступок, Действие", "Позиция; Отношение к", "Проход", "prep- После, Через; adv- Потом"]
  
  
  var english: String {
    get {
      return englishInput.text!
    }
    set{
      let englishvalue = "\(newValue)"
      englishInput.text = "\(newValue)"
    }
  }
  
  var russia: String {
    get {
      return russianInput.text!
    }
    set{
      let russiavalue = "\(newValue)"
      russianInput.text = "\(newValue)"
    }
  }

  
  @IBOutlet weak var englishInput: UILabel!
  @IBOutlet weak var russianInput: UILabel!
  @IBAction func buttonMore(sender: UIButton) {

    let index = Int(arc4random_uniform(UInt32(englishWord.count)))
    englishInput.text = englishWord[index]
    russianInput.text = russianWord[index]
//    englishInput.text = String(arc4random_uniform(UInt32(englishWord.count)))
//    russianInput.text = russianWord[3]
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

