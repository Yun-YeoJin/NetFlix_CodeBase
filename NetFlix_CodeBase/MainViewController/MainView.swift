//
//  MainView.swift
//  NetFlix_CodeBase
//
//  Created by 윤여진 on 2022/08/19.
//

import UIKit

import SnapKit
import Then

class MainView: BaseView {
    
    
    let tvProgramLabel = LabelDesign().then {
        $0.text = "TV프로그램"
    }
    let movieLabel = LabelDesign().then {
        $0.text = "영화"
    }
    let pickLabel = LabelDesign().then {
        $0.text = "내가 찜한 콘텐츠"
    }
    
    let checkLabel = LabelDesign().then {
        $0.text = "내가 찜한 컨텐츠"
    }
    
    let informationLabel = LabelDesign().then {
        $0.text = "정보"
    }
    
    let previewLabel = LabelDesign().then {
        $0.text = "미리보기"
    }
    
    let checkButton = MainButtonDesign().then {
        $0.setImage(UIImage(systemName: "checkmark"), for: .normal)
        $0.backgroundColor = .clear
    }
    
    let informationButton = MainButtonDesign().then {
        $0.setImage(UIImage(systemName: "info.circle"), for: .normal)
        $0.backgroundColor = .clear
    }
    
    let playButton = UIButton().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 8
        $0.layer.borderWidth = 1
        $0.setTitle(" 재생하기 ", for: .normal)
        $0.setTitleColor(.black, for: .normal)
  
    }
    
    let backgroundImageView = UIImageView().then {
        $0.image = UIImage(named: "어벤져스엔드게임")
        $0.alpha = 0.5
    }
    
    let firstImageView = MainImageViewDesign().then {
        $0.image = UIImage(named: "암살")
    }
    let secondImageView = MainImageViewDesign().then {
        $0.image = UIImage(named: "도둑들")
    }
    let thirdImageView = MainImageViewDesign().then {
        $0.image = UIImage(named: "7번방의선물")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [backgroundImageView, checkButton, informationButton, tvProgramLabel, movieLabel, pickLabel, checkLabel, informationLabel, previewLabel, playButton, firstImageView, secondImageView, thirdImageView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        
        tvProgramLabel.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.leading.equalTo(80)
            make.height.equalTo(20)
        }
        
        movieLabel.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.leadingMargin.equalTo(tvProgramLabel.snp_trailingMargin).offset(50)
            make.height.equalTo(20)
        }
        
        pickLabel.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.leadingMargin.equalTo(movieLabel.snp_trailingMargin).offset(50)
            make.height.equalTo(20)
        }
        
        backgroundImageView.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.leadingMargin.equalTo(0)
            make.trailingMargin.equalTo(0)
            make.bottom.equalTo(-200)
        }
        
        firstImageView.snp.makeConstraints { make in
            make.top.equalTo(backgroundImageView.snp_bottomMargin).offset(40)
            make.leadingMargin.equalTo(16)
            make.width.height.equalTo(100)
        }
        secondImageView.snp.makeConstraints { make in
            make.top.equalTo(backgroundImageView.snp_bottomMargin).offset(40)
            make.leading.equalTo(firstImageView.snp_trailingMargin).offset(30)
            make.width.height.equalTo(100)
        }
        thirdImageView.snp.makeConstraints { make in
            make.top.equalTo(backgroundImageView.snp_bottomMargin).offset(40)
            make.leadingMargin.equalTo(secondImageView.snp_trailingMargin).offset(40)
            make.trailing.equalTo(-16)
            make.width.height.equalTo(100)
        }
        previewLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundImageView.snp_bottomMargin).offset(5)
            make.leading.equalTo(5)
            make.height.equalTo(30)
        }
        
        playButton.snp.makeConstraints { make in
            make.bottom.equalTo(backgroundImageView.snp_bottomMargin).offset(-40)
            make.centerWithinMargins.equalTo(backgroundImageView.snp_centerWithinMargins)
            make.width.equalTo(100)
            make.height.equalTo(44)
        }
        
        checkButton.snp.makeConstraints { make in
            make.bottom.equalTo(backgroundImageView.snp_bottomMargin).offset(-50)
            make.leading.equalTo(50)
            make.width.height.equalTo(44)
        }
        checkLabel.snp.makeConstraints { make in
            make.top.equalTo(checkButton.snp.bottom).offset(8)
            make.centerWithinMargins.equalTo(checkButton.snp_centerWithinMargins)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
        informationButton.snp.makeConstraints { make in
            make.bottom.equalTo(backgroundImageView.snp_bottomMargin).offset(-50)
            make.trailing.equalTo(-50)
            make.width.height.equalTo(44)
        }
        informationLabel.snp.makeConstraints { make in
            make.top.equalTo(informationButton.snp.bottom).offset(8)
            make.centerWithinMargins.equalTo(informationButton.snp_centerWithinMargins)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }

        
        
        
       
        
    }
    
}

