//
//  Main_UILabel.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/20.
//

import UIKit

class LabelDesign: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLabel()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabel() {
        
        backgroundColor = .clear
        textAlignment = .center
        textColor = .white
        font = .boldSystemFont(ofSize: 15)
        
        
        
    }
    
    
}
