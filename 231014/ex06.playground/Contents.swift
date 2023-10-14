import UIKit

/* Type Safety */
let num01 = 5
// let num02: Int64 = num01
let num02: Int64 = Int64(num01)
print("num02: \(type(of: num02))")

// 연산하는 경우, 피연산자의 Type을 맞춰주어야 함
let n1 = 12
let n2 = 12.34
let sum = Double(n1) + n2
print("sum: \(sum)")

let rate = 1.56
let amount = 10000000
let underlinedAmount = 10_000_000 // 동일하게 작동되나 가독성을 위해 underline 허용됨
let multi01 = rate * Double(amount)
let multi02 = rate * Double(underlinedAmount)
print("multi01: \(multi01) || multi02: \(multi02)")


/* 형변환 연습 */
// Int → String
let num03 = 1234
let strNum = String(num03)
print("num03: \(type(of: num03)) || strNum: \(type(of: strNum))")

// String → Int
let str = "Hello"
let num04 = Int(str)

/*
 [String interpolation produces a debug description for an optional value; did you mean to make this explicit?]
 
 Optional Type의 num04 변수를 문자열 내부에서 보간하면
 옵셔널 값이 직접 문자열로 포함되는 것이 아니라,
 디버그 목적으로 사용되는 설명 `debug description`이 문자열로 포함되기 때문에
 해당 경고 메시지가 나온다
 */
//  print("str: \(type(of: str)) || num04: \(num04)")

print("num04 타입", type(of: num04))
