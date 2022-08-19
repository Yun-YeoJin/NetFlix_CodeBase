//
//  BaseViewController.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/19.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func configure() {
        
    }
    
    func setConstraints() {
        
    }
    
    func showAlertMessage(title: String, buttonTitle: String) {
        
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: buttonTitle, style: .cancel)
        alert.addAction(ok)
        self.present(alert, animated: true)
        
    }
}




