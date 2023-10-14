import UIKit

/*
 Boolean Type 논리자료형
 true, false
 */

/* === type(of: 변수명) ===
 변수의 자료형을 반환해줌
*/
let booleanType = type(of: false)
print("flag01: \(booleanType)")

let numType = type(of: 100)
let floatType = type(of: 3.141592)
print("num: \(numType) || float: \(floatType)")

/*  타입지정 */
let flag01: Bool = true
var flag02: Bool = true
print("let키워드: \(flag01) || var키워드: \(flag02)")

/*
 num이라는 Int Type 변수를 선언해서 → Int Type으로 메모리 공간을 생성하고
 해당 메모리 공간에 num이라는 이름표(변수) 지정함
 값을 할당하기 전엔 해당 변수를 사용할 수 없음

 */

let num: Int // 변수만 선언하고
num = 100 // 나중에 값 할당함 (초기화)
let num2 = 100;

/* 세미콜론 */
print("세미콜론을 안붙여도 되고")
print("세미콜론을 붙여도 된다");
