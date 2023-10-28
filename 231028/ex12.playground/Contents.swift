import UIKit

func sum(n1: Int, n2: Int, method: (Int, Int) -> Int) -> Int {
    return method(n1, n2)
}
// 실행할 때 클로저함수 바로 선언하기 (자바에서의 익명함수)
var result = sum(n1:10, n2:20, method: {
    (n1: Int, n2:Int) -> Int in
    return n1 + n2
})

// 타입추론을 사용해서 리턴타입 생략가능
result = sum(n1:10,n2:20, method: {
    (n1: Int, n2: Int) in
    return n1 + n2
})

// 매개변수 생략가능
// in 키워드는 클로저에서 매개변수와 본문을 구분할때 사용되기 때문에
// 매개변수를 생략하고 짧은 문법을 사용할땐 in 키워드도 생략해야 한다
result = sum(n1:10,n2:10, method: {
    return $0 + $1
})

// return 키도 생략가능
result = sum (n1: 10, n2: 20, method: {
    $0 + $1
})

/* 후행클로저 Trailing Closure
함수를 소괄호로 먼저 닫은 다음, 클로저를 마지막 매개변수로 선언한다
함수의 리턴타입 생략가능하다
 */
result = sum(n1:10, n2: 20) {
    (n1:Int,n2:Int)-> Int in
    return n1 + n2
}


