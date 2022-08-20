//
//  UIButton.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/19.
//

import UIKit


class ButtonDesign: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButton()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton() {
        
        backgroundColor = .white
        layer.cornerRadius = 5
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1
        setTitleColor(UIColor.black, for: .normal)
        
        
    }
    
    
}
