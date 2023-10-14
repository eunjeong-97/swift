import UIKit

// ========= 1. 초기화  =========
// 변수에 최초로 값을 할당하는 것을 초기화라고 한다
let name = "더조은"
let year = 2023
let age = 20

let num1 = 1, num2 = 2, num3 = 3
print("num1 \(num1), num2 \(num2), num3 \(num3)")

/* ========= 2. 변수표기법: camelCase =========
 두 단어 이상 합해서 변수 이름을 만드는 경우

 변수이름, 함수이름
 bookIndex
 studentNumber
 creditCard
 
 클래스이름, 구조체이름
 BookIndex
 StudentNumber
 CreditCard
 */


/*  ========= 3. scope: 변수의 인식범위  =========
 더 넓은 스코프에서는 더좋은 스코으에 있는 값을 인식하지 못함
 내부의 스코프에서 외부 스코프에 있는 값을 인식할 수 있음
 */

var sum = 0
for i in 1...10 {
    var tmp = 10
    sum += i
}
print(sum)
// 스코프 외부에서는 해당 변수를 불러올 수 없음
// print(i)
// print(tmp)
