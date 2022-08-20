//
//  Main_UIButton.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/20.
//

import UIKit

class MainButtonDesign: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupMainButton()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupMainButton() {
        
        
        tintColor = .white
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.clear.cgColor
        contentMode = .scaleToFill
        
        
    }
    
    
}
