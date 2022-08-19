//
//  TextField.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/19.
//

import UIKit

class TextFieldDesign: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupTextField()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTextField() {
        
        keyboardType = .default
        textAlignment = .center
        textColor = .white
        borderStyle = .roundedRect
        font = UIFont.systemFont(ofSize: 15)
        backgroundColor = .gray
        
        
    }
    
    
}
