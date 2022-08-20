//
//  Main_UIImageView.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/20.
//

import UIKit

class MainImageViewDesign: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupmovieImage()
    }
    
    convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
    }
  
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupmovieImage() {
        
        layer.cornerRadius = 20
        layer.borderWidth = 2
        layer.borderColor = UIColor.darkGray.cgColor
        clipsToBounds = true
        contentMode = .scaleToFill
        
    }
    
    
}
