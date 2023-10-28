import UIKit

/*
 클로저
 {(paramter) -> return type in
    코드실행..
 }
 
 parameter와 return type이 생략된 클로저
 { 코드실행.. }
 */

/**
 변수에 익명함수를 할당하면, 해당 함수는 익명함수의 이름표 역할을 한다
 */
let 클로저 = { print("클로저를 활용한 함수 선언: 함수표현식같다") }
클로저()

let 클로저2 = { (msg: String) -> String in
    return msg
}
print(클로저2("클로저로 함수호출할땐, argument label를 사용하지 않는다"))

/*
 함수타입에 typealias 설정하기
 */
typealias Closure01 = (String) -> String
typealias Closure02 = (String) -> (String)
typealias Closure03 = (String) -> (String, Int)

func test(closure: Closure01, argument: String) {
    print("test함수에 매개변수로 클로저 전달: \(closure(argument))")
}

test(closure: 클로저2, argument: "매개변수는 함수가 호출될때 넣어준ㄷ")
