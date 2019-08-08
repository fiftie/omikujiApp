//
//  ViewController.swift
//  OmikujiApp
//
//  Created by 五十嵐龍吉 on 2019/08/08.
//  Copyright © 2019 Tatsuyoshi Igarashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var myLabel: UILabel!
	@IBAction func getOmikuji(_ sender: Any) {
		let results = ["大吉", "吉", "中吉", "凶", "大凶"]
		let random = arc4random_uniform(UInt32(results.count))
		self.myLabel.text = results[Int(random)]
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
//		myLabel.layer.borderColor = UIColor.orange.cgColor
//		myLabel.layer.borderWidth = 5
//		myLabel.layer.cornerRadius = 50
		myLabel.layer.masksToBounds = true
		myLabel.layer.cornerRadius = myLabel.bounds.width / 2
	}


}

