import UIKit


/* 언래핑 연습2 */

func 언래핑01(){
    var num1: Int?
    num1 = 10

    if num1 != nil {
        // 옵셔널값 그대로 출력안됨
        print(num1!)
    } else {
        print("nil이다")
    }
}

/* Optional Binding
 
 if let 상수 = 옵셔널변수 {
    상수사용하면서 코드블럭 실행
 }

 if var 변수 = 옵셔널변수 {
    변수사용하면서 코드블럭 실행
 }
 */


func 옵셔널바인딩(){
    var num: Int?
    if let num1 = num {
        print("값 할당하기 전", num1)
    }
    
    num = 100

    
    if let num2 = num {
        print("값 할당한 다음", num2)
    }
    
}

func 옵셔널바인딩2(){
    var num: Int?
    if let num {
        print("값 할당하기 전", num)
    } else {
        print("값을 할당하기 전에는 nil이다")
    }
    
    num = 100
    // 옵셔널로 선언된 변수와 동일하게 사용??
    if let num {
        print("값 할당한 다음", num)
    }
}

func 옵셔널바인딩3(){
    var str1: String?
    var str2: String?
    
    str1 = "a"
    
    if let first = str1, let second = str2 {
        print("first", first)
        print("second", second)
    } else {
        print("둘중 하나는 nil이다")
    }
    str2 = "b"
}
