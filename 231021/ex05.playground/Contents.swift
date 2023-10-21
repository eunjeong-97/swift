import UIKit

/* 반복문: for-in loop
 
 이때 Range객체는 iterable 객체이다.
 for 인덱스변수 in Range객체 {

 }
 */

for idx in 1...7 {
    print(idx)
}

for idx in 1...7 {
    print("변수사용하지 않으면 에러 발생함")
}

for _ in 1...7 {
    print("와일드카드 사용해서 변수사용안함")
}

let power = 3
var sum = 1
for _ in 1...power {
    sum *= 2
}
print(sum) // 2^3

/*
 stride() 함수 활용하기
 stride(from, to-1, by)
 */

print("=======")
// 0부터 9까지 2씩 건너뛰면서
for num in stride(from:0, to:10, by:2) {
    print(num)
}

// iterable type으로 배열 지정
let 과일목록 = ["사과","배","바나나","키위"]
for 과일 in 과일목록 {
    print("과일: \(과일)")
}
