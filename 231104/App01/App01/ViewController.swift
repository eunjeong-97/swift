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
    
    @IBOutlet weak var img: UIImageView!
    
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
            btn.backgroundColor = UIColor.lightGray
            btn.setTitleColor(UIColor.black, for: .normal)
            btn.setTitleColor(UIColor.white, for: .highlighted)
            btn.setTitle("버튼\(index+1)", for: .normal)
            btn.addTarget(self, action: #selector(onBtnClick(_:)), for: .touchUpInside)
        }
        
        // 3. 입력창
        input1.placeholder = "변경할 제목을 입력하세요"
        input1.backgroundColor = UIColor.white
        submit.setTitle("입력하기", for: .normal)
        submit.backgroundColor = UIColor.lightGray
        submit.setTitleColor(UIColor.black, for: .normal)
        submit.setTitleColor(UIColor.white, for: .highlighted)
        submit.addTarget(self, action: #selector(onSubmit(_:)), for: .touchDown)
        
        // 4. 이미지
        img.image = UIImage(named: "swift")
        img.tag = 1
        img.isUserInteractionEnabled = true // 이미지 상호작용 활성화
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onChange(_:))) // 탭 제스처 인식기 생성
        img.addGestureRecognizer(gesture) // 탭 제스처 인식기 추가
        
        
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
        
        if let inputValue = input1.text, !inputValue.isEmpty {
            labelTitle.text = inputValue
            print("submit 완료")
        } else {
            print("내용을 입력해주세요")
        }
        
    }
    
    // 이미지 교체함수
    @IBAction func onChange(_ sender: UIImageView){
        print("이미지교체")
        let img = sender
        switch img.tag {
        case 1:
            img.image = UIImage(named: "apple")
            img.tag = 2
        case 2:
            img.image = UIImage(named: "swift")
            img.tag = 1
        default:
            break
        }
    }
    
}

