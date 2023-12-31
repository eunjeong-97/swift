import UIKit

/* 비트 연산자
 & : 비트가 모두 1일때 -> 1 반환 (하나라도 0 -> 0반환)
 | : 비트가 모두 0일때 -> 0 반환 (하나라도 1 -> 1반환)
 ^ : 비트가 서로 다르면 -> 1 반환 (동일하면 -> 0반환)
 ~ : 비트를 반대로 바꿈
 */

let num1 = 10
let num2 = 5

// 10진수를 2진수로 출력
print(String(num1, radix: 2)) // 1010
print(String(num2, radix: 2)) // 0101

/*
 비트연산은 이진수로 연산함
 1: true, 0: false
 
 & 비트연산자: AND
 10 - 1010
  5 - 0101
  & - 0000 (0)
 
 | 비트연산자: OR
 10 - 1010
  5 - 0101
  | - 1111 (1+2+4+8=15)
 
 ^ 비트연산자: 서로다르면 true
 10 - 1010
  5 - 0101
  ^ - 1111 (15)
 
 ~ 비트연산자: 연산하기 전에 비트를 반대로 바꿈
  10 - 1010
 ~10 - 0101
   5 - 0101
   & - 0101 (1+4=5)
 */

print("10 % 5 => \(num1 % num2)")
print("10 | 5 => \(num1 | num2)")
print("10 ^ 5 => \(num1 ^ num2)")
print("~10 & 5 => \(~num1 & num2)")

/*
 Left Shift 연산자
 변수 << n : 원래의값 * 2의n제곱
 변수에 할당된 값의 비트를 왼쪽으로 n번 이동
 
 변수 >> n : 원래의값 / 2의n제곱
 
 
 [1] 비트연산으로 계산
 5 - 0101
 0101 -> 왼쪽으로 1번이동하고 남은자리는 0으로 채워줌
 결과: 1010 (2+8=10)

 [2] 원래변수값 * 2의n제곱
 원래값 5
 2^1 = 2
 결과: 5 * 2 = 10
 */

print("5 << 1 = ", num2 << 1) // 10

print("5 >> 1 = ", num2 >> 1); // 5/2 = 2
