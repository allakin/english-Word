//
//  ViewController.swift
//  1234
//
//  Created by Павел Анплеенко on 26/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

var words: [String] = [
	"a - неопределенный артикль",
	"abandon - отказываться, покидать, прекращать",
	"abandoned - заброшенный !NEW!",
	"abate - уменьшить",
	"abbey - Аббатство (TR!)",
	"abbreviation - сокращение",
	"ABC - алфавит, азбука, букварь, начатки, основы",
	"zoo - зоопарк",
	"zoological - Зоологический (TR!)"
]

var old: String?
var newArr: [Int] = []
var countArr = 0
	
var english: String {
	get {
			return englishInput.text!
	}
	set{
			_ = "\(newValue)"
			englishInput.text = "\(newValue)"
	}
}

  
override func viewDidLoad() {
	super.viewDidLoad()
	// Do any additional setup after loading the view, typically from a nib.
}

  
@IBOutlet weak var englishInput: UILabel!

@IBAction func backBarButton(sender: UIBarButtonItem) {
	if countArr == 0 {
		englishInput.text = "English Word"
	} else {
		countArr -= 1
		englishInput.text = words[newArr[countArr]]
	}
}

  
@IBAction func nextBarButton(sender: UIBarButtonItem) {
	let random = Int(arc4random_uniform(UInt32(words.count)))
	old = englishInput.text
	englishInput.text = words[random]
	newArr.append(random) // новый созданный массив
	countArr = newArr.count - 1
	print(newArr)
}

}

//  override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    // Dispose of any resources that can be recreated.
//  }



