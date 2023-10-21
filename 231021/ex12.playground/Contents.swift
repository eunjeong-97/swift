import UIKit

/* 옵셔널 바인딩 연습 */

func 옵셔널바인딩1(){
    let n1: Int? = 12
    let s1: String? = "eunjeong"
    
    if let num1 = n1, let str1 = s1, str1.count > 5 {
        print("num1: \(num1) str1: \(str1)")
    } else {
        print("숫자나 문자가 nil이거나 문자 글자수가 5글자이하이다.")
    }
}

func 옵셔널바인딩2(){
    let n1: Int! = 34
    let a = n1 // 타입추론으로 인해 n1과 동일한 옵셔널 변수가 된다
    
    let n2: Int = n1 // Int로 타입명시하면 옵셔널 변수를 할당받아도 Int타입으로 된다
    print("옵셔널 변수 할당받은 변수의 타입")

    print("a: \(a!), type: \(type(of: a)), 타입추론으로 옵셔널변수됨")
    print("n2: \(n2), type: \(type(of: n2)), 타입명시로 인해 논옵셔널변수됨")
}

func 옵셔널바인딩3(){
    print("")
    var msg = ""
    var input: String? = "swift"
    
    if let inputName = input {
        msg = "Hello, " + inputName
    } else {
        msg = "Hello, 익명"
    }
    
    print(msg)
}

func 옵셔널바인딩4(){
    print("연산자를 활용한 옵셔널 바인딩")
    let first = "Hello, "
    var input: String? = "swift"
    let msg1 = first + (input != nil ? input! : "익명") // 삼항연산자
    let msg2 = first + (input ?? "익명") // 기본연산자
    print(msg1)
    print(msg2)
}
