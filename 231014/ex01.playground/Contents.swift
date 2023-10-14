import UIKit

/* ======= 1. xcode 단축키 =======
코드실행 Shift + Enter
줄복사 cmd + d 
*/
var greeting = "Hello, playground"
print(greeting)
print("greeting")

let r = CGRect(x: 0, y: 10, width: 20, height: 30)

/*  ======= 2. 할당연산자(대입연산자) `=` =======
오른쪽에 있는 값을 왼쪽 값에 대입함
*/
var number = 100
number = 200
print("number: ", number)


/* ======= 3. let 키워드로 상수만듦 =======
최초로 값을 할당한 이후에 재할당하지 못함
var나 let 키워드로 사용하지 않으면 이미 메모리에 올라가 있는 변수를 재사용함
즉, 기존에 있는 변수에 새로운 값을 재할당하게 된다
*/
let number02 = 100
// number02 = 200

//  ======= 4. 반복문 ======= 
var sum = 10
for i in 1...10 {
    sum += i // sum = sum + 1
}
print("합계: \(sum)")
