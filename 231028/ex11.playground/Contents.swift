import UIKit

/**
 Closure
 
 Code Block 코드블럭
 코드블럭을 변수로 만들고, 매개변수로 전달하고, 실행할 수도 있다
 코드블럭을 변수로 만들면 비동기처리할때 유리하다

 */

var closure: (Int, Int) -> Int = {
    (num1: Int, num2: Int) -> Int in
    return num1 + num2
}

var sum  = closure(10,20)
print(sum)

/**
 일반함수의 매개변수에 클로저함수 전달하기
 개별적인 값을 전달하는게 아니라 코드블럭 자체를 전달한다
 */

func 코드블럭전달(n1: Int, n2: Int, closure: (Int, Int)->Int)-> Int {
        return closure(n1,n2)
}

print(코드블럭전달(n1:10,n2:20,closure: closure))


