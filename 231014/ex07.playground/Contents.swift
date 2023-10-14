import UIKit

/* [Type Alias 별칭] */

/* 좌표 변수 2개 초기화 */
let lat: Double = 12.34
let lon: Double = 45.67
typealias 타입별칭 = Double

/* 일항연산자
 연산을 수행하기 위해서 필요한 피연산자의 최소 개수가 1개인 연산자
 */
let num01 = 100
print(num01)
print(-num01)

/* 이항연산자
 연산을 수행하기 위해서 필요한 피연산자의 최소 개수가 2개인 연산자 */
let num02 = 10
var result = num01 + num02
print("더하기: \(result)")

result = num01 - num02
print("빼기: \(result)")

result = num01 * num02
print("곱하기: \(result)")

result = num01 / num02
print("나누기: \(result)")

result = num01 % num02
print("나머지: \(result)")


/* 나머지연산자 활용
 예: 정수에서 1의자리 숫자만 구하는 연산
 */
let num03 = 123
let unitsDigit = num03 % 10
print("123의 1의자리숫자 \(unitsDigit)")

/* Overflow */

// 해당타입의 최대값보다 크거나, 최소값보다 작은 값을 할당할 수 없음
// let 최대오버플로우 = Int8.max + 1
// let 최소오버플로우 \ Int8.min - 1

// 오버플로우 연산
// 오버플로우 연산자 (`&+`, `&-`)를 사용함
// -128 ~ 127
let num05 = Int8.max &+ 1 // 해당 정수타입의 최소값부터 다시 시작 (해당 정수타입의 최소값)
let num06 = Int8.min &- 1 // 해당 정수타입의 최대값부터 다시 시작 (해당 정수타입의 최대값)
print("정수타입의 최대: \(Int8.max) || 최소: \(Int8.min)")
print("num05: \(num05), num06: \(num06)")

// 동일하다!!!
print("값 자체도 동일해질까?")
print("정수타입의 최대값", Int8.min == num05 )
print("정수타입의 최소값", Int8.max == num06)




