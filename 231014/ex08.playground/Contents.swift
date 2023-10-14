import UIKit

// 대소문자 구분
let str01 = "swift"
let str02 = "Swift"
print(str01 == str02)

// 부정연선자`!`
print(str01 != str02)

/* 문자비교
 문자는 정보교환을 위한 미국표준코드인, ASCII Code 값으로 비교함
 예) A: 65, a: 97, "0": 48
 */

// 동일한 인덱스의 문자(문자의 아스키코드)를 비교한다
 print(str01 > str02) // true

/* 논리연산자
 
 논리곱(AND) A && B
 A, B 모두 true 이어야 true (하나라도 false면 false)
 
 논리합(OR) A || B
 A, B 둥 중 하나만 true면 true
 
 논리부정(NOT) !A
 A의 반대값
 */

let flag01 = true
print("원래값: \(flag01) || 논리부정: \(!flag01)")

let and01 = true && true
let and02 = true && false
let and03 = false && true // 앞의 값이 이미 false -> 뒤의 값을 볼 필요가 없다 [Short circuit]
let and04 = false && false // 앞의 값이 이미 false -> 뒤의 값을 볼 필요가 없다 [Short circuit]

let or01 = true || true // 앞의 값이 이미 true -> 뒤의 값을 볼 필요가 없다 [Short circuit]
let or02 = true || false // 앞의 값이 이미 true -> 뒤의 값을 볼 필요가 없다 [Short circuit]
let or03 = false || true
let or04 = false || false

print("and01 \(and01) || and02 \(and02) || and03 \(and03) || and04 \(and04)")
print("or01 \(or01) || or02 \(or02) || or03 \(or03) || or04 \(or04)")

// Swift는 논리연산할 때 Boolean Type이 아니라 다른 타입이 해당 피연산자로 오면 Boolean Type으로 자동으로 형변환되지 않음
// 즉, true + false 는 Boolean Type으로 형변환되지 않는다
// print(true && (true + false))
