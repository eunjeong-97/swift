import UIKit

/**
 Generic(s)

 입렫되는 data type을 제한하기 위한 문법
 주로 컬렉션이나 배열에서 사용한다: Array<Int>
 
 함수, 구조체, 클래스, 열거형에서 사용한다.
 */

// Generic: Type Parameter
struct Calc<T> {
    var num: T
    init (num: T) {
        self.num = num
    }
}

var c1 = Calc(num: 100)
var c2 = Calc(num: "100")
var c3 = Calc(num: true)

dump(c1)
dump(c2)
dump(c3)
