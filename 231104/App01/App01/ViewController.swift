//
//  ViewController.swift
//  App01
//
//  Created by 더조은-3 on 2023/11/04.
//

import UIKit

/**
 ViewController
 
 스토리보드 UI에 대응하는 컨트롤 소스
 화면 하나에 스토리보드 화면 하나, 뷰컨트롤러 소스 하나를 가진다.
 */

class ViewController: UIViewController {
    
    // outlet 변수 작성하는 부분
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet var btns: [UIButton]!
    
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var submit: UIButton!
    
    
    // === View가 로딩되었을때 자동으로 호출되는 함수 ===
    override func viewDidLoad() {
        super.viewDidLoad()
        // === 초기화 코드를 작성 ===
        
        // 1. 제목
        labelTitle.backgroundColor = UIColor.white
        labelTitle.text = "First App"
        labelTitle.textColor = UIColor.black
        
        // 2. 중간버튼
        btns = [btn1,btn2,btn3]
        for (index, btn) in btns.enumerated() {
            // btn.backgroundColor = UIColor(red:1, green:0, blue: 0, alpha: 1)
            btn.backgroundColor = UIColor.gray
            btn.setTitleColor(UIColor.black, for: .normal)
            btn.setTitleColor(UIColor.white, for: .highlighted)
            btn.setTitle("버튼\(index+1)", for: .normal)
            btn.addTarget(self, action: #selector(onBtnClick(_:)), for: .touchUpInside)
        }
        
        // 3. 입력창
        input1.placeholder = "변경할 제목을 입력하세요"
        submit.setTitle("입력하기", for: .normal)
        submit.addTarget(self, action: #selector(onSubmit(_:)), for: .touchDown)

    }

    // === action function 작성하는 부분 ===
    
    // 중간버튼 콜백함수
    @IBAction func onBtnClick(_ sender: UIButton) {
        if let title = sender.title(for: .normal) {
            print("\(title) onClick!")
        }
        sender.setTitle("버튼눌림", for: .highlighted)
    }
    
    // 입력함수 콜백함수
    @IBAction func onSubmit(_ sender: UIButton) {
        let inputValue = input1.text
        labelTitle.text = inputValue
        print("submit 완료")
    }
    
}

