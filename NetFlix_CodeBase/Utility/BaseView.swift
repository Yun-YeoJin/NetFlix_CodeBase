//
//  BaseView.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/19.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() { }
    
    func setConstraints() { }
    
}
