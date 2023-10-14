import UIKit

/* 조건문 : conditional statement

[형식] 자바스크립트와 다르게 스위프트는 조건식에 괄호로 감싸지 않는다
 
 if 조건식1 {
    
 } else if 조건식2 {
    
 } else {
    
 }

 */


// 스위프트에서는 조건식에 Boolean Type이 아닌 다른타입을 별도로 쓸 수 없음
// Bool로 변환된 식을 부여해야 함
let money = 3000
let card = true
// if money { // Type 'Int' cannot be used as a boolean; test for '!= 0' instead
if money > 0 {
    print("돈 있음")
} else {
    print("돈 없음")
}


if money >= 10000 || card {
    print("영화볼 수 있음")
} else {
    print("영화볼 수 없음")
}

/* 성적이 80이상이면 합격, 아니면 불합격 */
let 우수학생 = 90
let 못난학생 = 50

func 점수확인(점수: Int, 커트라인: Int = 80) -> String {
    if 점수 > 커트라인 {
        return "합격"
    } else {
        return "불합격"
    }
}


/*
 num1 ~ num3 중에서 최대값을 출력하는 if문과 삼항연산자 각각
최대값의 조건: 하나의 수가 다른 두수보다 크거나 같아야 함
 */
let num1 = 98
let num2 = 43
let num3 = 56

var max = 0
if num1 >= num2 && num1 >= num3 {
    max = num1
} else if num2 >= num3 {
    max = num2
} else {
    max = num3
}
print("선생님정답: \(max)")


func 조건식활용(숫자1:Int, 숫자2:Int, 숫자3:Int)->Int {
    var 비교값 = 숫자1;
    if 숫자1 >= 숫자2 {
        비교값 = 숫자1
    } else {
        비교값 = 숫자2
    }
    
    if 비교값 >= 숫자3 {
        return 비교값
    } else {
        return 숫자3
    }
}
print("조건식활용함수: \(조건식활용(숫자1: num1, 숫자2: num2, 숫자3: num3))")

func 삼항연산자활용(숫자1:Int, 숫자2:Int, 숫자3:Int)->Int {
    let 비교값 = 숫자1 >= 숫자2 ? 숫자1 : 숫자2
    let 최대값 = 비교값 >= 숫자3 ? 비교값 : 숫자3
    return 최대값
}

print("삼항연산자활용: \(삼항연산자활용(숫자1: num1, 숫자2: num2, 숫자3: num3))")

let newMax =
    (num1 >= num2 && num1 >= num3) ? num1 :
(num2 >= num3) ? num2 : num3
print("선생님정답2: \(newMax)")
