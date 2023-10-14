import UIKit

/* 복합 할당 연산자 Range Operator */

let num = 10
var sum = 0

// 1...10 : 1~10
for num in 1...10 {
    sum += num
}
print("1...10 : \(sum)")

// 1..<10 : 1~9
for num in 1..<9 {
    sum += num
}
print("1..<10 : \(sum)")

// 10...1
/*
 시작값이 종료값보다 작으면 에러가 발생한다
for num in 10...1 {
    print(num)
}
print("")
*/
 print(Array(1...10).reversed())


let arr = ["a", "b", "c", "d", "e"]
print("배열의 인덱스로 활용")
print(arr[2...])
print(arr[...2])

let range = ...5
print(range.contains(10))
print(range.contains(2))
print(range.contains(1))
print(range.contains(0))
print(range.contains(0))
print(range.contains(-1))
print(range.contains(-10))
