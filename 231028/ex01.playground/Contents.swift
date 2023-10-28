import UIKit

/* */

// 함수 정의부
func sayHello(){
    let name = "더조은"
    print("\(name) 님, 안녕하세요")
    return
}

// 함수 호출부
sayHello()

func addTwoNumbers(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

let num = addTwoNumbers(num1: 10, num2: 20)
print(num)

if num == 30 {
    print("30이 나왔다~")
}

print(Int.random(in: 1...10))


// randomNum 결과가 홀수면 출력하지 않고 종료, 짝수면 출력하고 종료한다
func test1(){
    let randomNum = Int.random(in: 1...10)
    if randomNum % 2 == 1 {
        return
    }
    print("randomNum : \(randomNum)")
}

test1()
