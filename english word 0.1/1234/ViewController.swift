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
		"abide - ждать, терпеть",
		"ability - способность (-y не от слова capable)",
		"able - способный (-e)",
		"aboard - на корабле, на борту, в вагоне",
		
		"abode - местопребывание, жилище (не lodge)",
		"abominable - отвратительный, противный",
		"about - о",
		"above - над, выше, наверху",
		"abroad - за границей",
		"abrupt - резкий, внезапный, крутой, обрывистый",
		"abruptly - внезапно, резко, грубо !NEW!",
		"absence - отсутствие",
		"absent - отсутствующий",
		"absolute - совершенный, чистый",
		"absolutely - абсолютно, совершенно",
		"absorb - поглощать, всасывать, впитывать",
		"absorbed - увлечённый чем-либо !NEW!",
		"absorption - Поглощение (TR!)",
		"abstract - отвлеченный, абстрактный",
		"absurd - нелепый",
		"absurdity - нелепость",
		"abundance - богатство, изобилие",
		"abundant - обильный",
		"acacia - акация",
		"accent - подчеркивать, произносить",
		"accept - принимать",
		"accepted - принятый",
		"access - доступ, подход, доступность",
		"accessible - доступный",
		"accident - несчастный случай",
		"accidental - случайный, нечаянный",
		"accidentally - случайно, нечаянно",
		"acclaim - провозглашать",
		"accommodate - согласовывать, улаживать, примирять",
		"accommodation - удобство, согласование",
		"accompany - сопровождать",
		"accompanying - сопровождающий",
		"accomplice - сообщник",
		"accomplish - выполнять",
		"accomplished - Выполненный (TR!)",
		"accord - согласие, гармония",
		"accordance - согласованность, согласие, соответствие",
		"according - согласно -ing",
		"accordingly - согласно",
		"account - счет, оценка, причина",
		"accounts - Счета (TR!)",
		"accuracy - точность, аккуратность",
		"accurate - точный, правильный",
		"accusation - обвинение",
		"accuse - обвинять",
		"accused - Обвиняемый (TR!)",
		"accustom - приучать",
		"accustomed - Приученный (TR!)",
		"ache - боль a-",
		"achieve - достигать, успешно выполнять a-",
		"achievement - выполнение, достижение",
		"acid - кислый, кислота (не sour)",
		"acknowledge - признавать, вознаграждать",
		"acknowledged - Подтвержденный (TR!)",
		"acorn - желудь",
		"acquaintance - знакомство, знакомый",
		"acquire - приобретать",
		"acquired - приобретённый !NEW!",
		"acquisition - приобретение",
		"acquit - оправдывать",
		"across - через",
		"act - акт, дело, действовать",
		"acted - Действовал (TR!)",
		"acting - временно исполняющий обязанности, игра",
		"action - действие, поступок",
		"active - активный",
		"actively - активно, деятельно",
		"activity - деятельность, активность",
		"actor - актер",
		"actress - актриса",
		"acts - Действия (TR!)",
		"actual - текущий, современный",
		"actually - фактически, в настоящее время",
		"acute - острый, проницательный",
		"adapt - приспособить, переделать",
		"adapted - Приспособленный (TR!)",
		"add - добавлять, прибавлять",
		"addition - прибавление, сложение",
		"additional - дополнительный",
		"additions - Дополнения (TR!)",
		"address - адрес, обращение",
		"adept - знаток, сторонник",
		"adequate - достаточный, соответствующий",
		"adhere - прилипать, приставать ( to) , приклеиваться, хвататься",
		"adjoining - Смежный -ing (TR!)",
		"zoo - зоопарк",
		"zoological - Зоологический (TR!)"
	]

	var newArr: [Int] = []
	var countArr = -1
	
	@IBOutlet weak var englishInput: UILabel!
	
	@IBAction func backBarButton(sender: UIBarButtonItem) {
		if countArr == 0 || newArr.isEmpty {
			englishInput.text = "English Word"
		} else {
			countArr -= 1
			englishInput.text = words[newArr[countArr]]
		}
	}
	@IBAction func nextBarButton(sender: UIBarButtonItem) {
		if countArr == newArr.count - 1 {
			if newArr.count < words.count {
				var random: Int!
				while true {
					random = Int(arc4random_uniform(UInt32(words.count)))
					if !newArr.contains(random) {
						break
					}
				}
				englishInput.text = words[random]
				newArr.append(random)
				countArr = newArr.count - 1
			} else {
				englishInput.text = "Finish"
			}
		} else {
			countArr += 1
			englishInput.text = words[newArr[countArr]]
		}
	}
}


//  override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    // Dispose of any resources that can be recreated.
//  }



