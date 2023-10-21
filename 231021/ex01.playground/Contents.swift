import UIKit

/*

맥북에 윈도우 켜진경우 전원을 켜는도중 alt키를 연타해서 맨우측에 있는 주황색 아이콘 선택

 switch must be exhaustive
 - switch문이 모든 가능한 경우를 처리하지 않았을 때 발생한다
 */

var num1 = 10
switch num1 {
case 10:
    print("10")
case 20:
    print("20")
case 30:
    print("30")
case 40, 50:
    print("40, 50")
default:
    print("일치하는 값이 없습니다")
}

print("=========")

switch num1 {
case 10:
    print("10")
case 20:
    print("20")
    fallthrough
case 30:
    print("30")
case 40, 50:
    print("40, 50")
default:
    print("일치하는 값이 없습니다")
}

print("=========")

num1 = 20
switch num1 {
case let number where number >= 10:
    print(number)
default:
    print(3333)
}

print("=========")

/* Interval Matching 범위매칭 */
let temp = -6
switch temp {
case ..<10:
    print("추움")
case 11..<20:
    print("날씨좋음")
case 21...27:
    print("따뜻함")
case 23...:
    print("더움")
default:
    break
}
