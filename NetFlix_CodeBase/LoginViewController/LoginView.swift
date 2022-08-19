//
//  LoginView.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/19.
//

import UIKit

import SnapKit
import Then

class LoginView: BaseView {
    
    let titleLabel = UILabel().then {
        $0.text = "YUNFLIX"
        $0.textColor = .red
        $0.font = .boldSystemFont(ofSize: 33)
        $0.textAlignment = .center
    }
    
    let emailTextField = TextFieldDesign().then {
        $0.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    let passwordTextField = TextFieldDesign().then {
        $0.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    let nicknameTextField = TextFieldDesign().then {
        $0.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    let locationTextField = TextFieldDesign().then {
        $0.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    let recommendTextField = TextFieldDesign().then {
        $0.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        $0.keyboardType = .numberPad
    }
    
    let registerButton = ButtonDesign().then {
        $0.setTitle("회원가입", for: .normal)
    }
    
    let switchButton = UISwitch().then {
        $0.onTintColor = .red
        $0.backgroundColor = .clear
        $0.isOn = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [titleLabel, emailTextField, passwordTextField, nicknameTextField, locationTextField, recommendTextField, registerButton, switchButton].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(80)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(120)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(32)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(32)
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(32)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(32)
        }
        
        recommendTextField.snp.makeConstraints { make in
            make.top.equalTo(locationTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(32)
        }
        
        registerButton.snp.makeConstraints { make in
            make.top.equalTo(recommendTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(40)
        }
        
        switchButton.snp.makeConstraints { make in
            make.top.equalTo(registerButton.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(40)
        }
        
    }
}

