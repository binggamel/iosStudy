//
//  ViewController.swift
//  iosStudy
//
//  Created by 김가은 on 2022/01/07.
//  Copyright © 2022 KimGaeun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0

    @IBOutlet weak var priceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    
    @IBAction func BtnHello(_ sender: Any) {
        let message = "이 사진의 가격은 ₩\(currentValue)입니다"
        
        let alert = UIAlertController(title: "구매하시겠습니까?", message: message, preferredStyle: .alert)
        let action01 = UIAlertAction(title: "YES", style: .default, handler: {
            action01 in self.refresh()
        })
        
        let action02 = UIAlertAction(title: "NO", style: .default, handler: {
            action02 in self.refresh()
        })
        
        let action03 = UIAlertAction(title: "X", style: .default, handler: {
            action03 in self.refresh()
        })
        
        alert.addAction(action01)
        alert.addAction(action02)
        alert.addAction(action03)
        
        present(alert, animated: true, completion: nil)
   
    }
    
    func refresh() {
        let randonRrice = arc4random_uniform(100000) + 1
        currentValue = Int(randonRrice)
        priceLable.text = "\(currentValue)"
    }
    
    
}

