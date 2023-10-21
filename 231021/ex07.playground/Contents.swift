import UIKit

/* while 반복문

 while 조건 {
 조건이 true인 동안 반복해서 실행한다.
 }
 */

/*
 for num in 1...10 {
 print("\(num)번째 숫자")
 }
 */

var num = 1
while num <= 10 {
    print("\(num)번째 숫자")
    num += 1
}

print("==== 1부터 10까지 숫자 중 짝수 출력 ====")
print("for문으로")
for num in 1...10 {
    if num % 2 == 0 {
        print(num)
    }
}

print("stride 사용")
for num in stride(from: 2, to: 11, by: 2) {
    print(num)
}

print("while문 사용")
var num2 = 1
while num2 <= 10 {
    if num2 % 2 == 0 {
        print(num2)
    }
    num2 += 1
}

func 구구단(){
    print("while문으로 구구단")
    var first = 1
    var second = 1

    while first < 10 {
        print("==== \(first)단 ====")
        while second < 10 {
            print("\(first) X \(second) = \(first * second)")
            second += 1
        }
        print("")
        first += 1
        second = 1
    }
}


/*
 짝수단에선 짝수만 곱하고 홀수단에선 홀수만 곱하는 구구단
 */



func 구구단2(){
    print("짝수단에선 짝수만 곱하고 홀수단에선 홀수만 곱하는 구구단")
    var first = 1
    var second = 1

    while first < 10 {
        print("==== \(first)단 ====")
        while second < 10 {
            if (first % 2 == 0) == (second % 2 == 0) {
                print("\(first) X \(second) = \(first * second)")
            }
            second += 1
        }
        print("")
        first += 1
        second = 1
    }
}


func getSum() {
    print("1부터 10까지 합계 출력")
    var sum = 0
    for num in 1...10 {
        sum += num
        print("1부터 \(num)까지의 합: \(sum)")
    }
    print("총 합계: \(sum)")
}

/*
 repeat - while 문
 명령문이 최초로 실행될 때는 조건에 관계없이 실행된다.
 두번째로 실행될때는 조건이 참일때만 명령문이 실행된다.
 - 조건이 true false 여부와 관계없이 명령문의 최초 한 번 실행을 보장한다.
 
 repeat {
 
 } while 조건
 */

print("그냥 while문일때")
var figure = 1
while figure < 100 {
    figure += 1
}
print(figure)

print("repeat-while문")
var figure2 = 1
repeat {
    figure2 += 1
} while figure2 < 100
print(figure2)
