//
//  SecondViewController.swift
//  App01
//
//  Created by 더조은-3 on 2023/11/04.
//

import SwiftUI

/*
 Delegate:  Protocal
 event 전달자: 이벤트 콜백함수
 Delegate (대리자): protocol (이벤트 함수 구현할 때 주로 사용한다)
 
 
 */

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var input1: UILabel!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var progress1: UIProgressView!
    @IBOutlet weak var progress2: UIProgressView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // event 받는 대상
        // viewDidLoad 메서드 내부에서 self = SecondViewController
        input.delegate = self
    }
    
    // textField에 글자가 입력될 때 마다 자동으로 호출된다.
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString str: String) -> Bool {
        
        if let current = textField.text, let textRange = Range(range, in: current) {
            let updated = current.replacingCharacters(in: textRange, with: str)
            print(updated)
        }
        
        // 이벤트가 유효할때 return true
        // return false: 이벤트를 무시한다
        return true
    }
    
    // 글자 입력이 완료될 때 자동으로 한 번 호출된다
    // 키보드에서 submit 버튼을 누르거나 포커스가 바뀔때
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
    }
    
    // 키보드 submit 버튼을 눌렀을때 자동으로 호출된다.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }
    
    // 토글 누를때마다 해당함수 실행
    @IBAction func onSwitch(_ sender: UISwitch) {
        input1.text = "삭제: \(String(sender.isOn))"
    }
    
    @IBAction func onSegment(_ sender: UISegmentedControl) {
        input1.text = "세그먼트: \(String(sender.selectedSegmentIndex))"
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("첫번째")
            progress1.progress = 0.3
            spinner.startAnimating()
        case 1:
            print("두번째")
            progress1.progress = 0.5
        case 2:
            print("세번째")
            progress1.progress = 0.9
        default:
            print("etc")
            progress1.progress = 1
            spinner.stopAnimating()
        }
    
    }
    
    @IBAction func onStep(_ sender: UIStepper) {
        
    }
}
