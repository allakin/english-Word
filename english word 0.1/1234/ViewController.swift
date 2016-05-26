//
//  ViewController.swift
//  1234
//
//  Created by Павел Анплеенко on 26/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var words = []
  
  
  var english: String {
    get {
      return englishInput.text!
    }
    set{
      let wordValue = "\(newValue)"
      englishInput.text = "\(newValue)"
    }
  }
  
  @IBOutlet weak var englishInput: UILabel!

  @IBAction func nextButton(sender: UIButton) {
    
    let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
    englishInput.text = [randomIndex]
    
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

