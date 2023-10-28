import UIKit

/*
 가변 매개변수 Variable Paramters
 
 함수에 0개이상의 값을 전달할 수 있게 해준다.
 이 값을 전달할 때, 일련의 값들을 직접 나열해야 한다.
 
 */


func test(of nums: Int...) {
    var sum = 0
    for num in nums {
        sum += num
    }
    print("가변 매개변수를 매개변수값으로 받은 sum: \(sum)")
}

// 1...10: 스위프트의 범위연산자를 사용해서 1부터 10까지 연속된값들을 나타낸다
// ClosedRange<Int> 타입을 가지는 하나의 값이기 때문에 에러가 발생한다.


// 1,2,3,4의 4개의 정수를 직접 나열해서 함수에 전달한다
test(of: 1,2,3,4)

// 정수의 배열이 된다
print(Array(1...10))

func test(of nums: [Int]) {
    var sum = 0
    for num in nums {
        sum += num
    }
    print("정수의 배열을 매개변수값으로 받은 sum: \(sum)")
}

test(of: Array(1...10))

/*
 파라미터로 설정한 변수는 기본적으로 let으로 정의된 상수로 인식한다
 */

func swapNum(_ num1: Int, with num2: Int) -> (num1: Int, num2: Int) {
    let origin = (num1, num2)
    let (new2, new1) = origin
    return (num1: new1, num2: new2)
}

var (num1, num2) = swapNum(10, with: 20)
print("swapNum (1)", num1, num2)

/**
 inout 키워드
 
 매개변수의 값을 함수 내부에서 수정할 수 있게 해준다.
 그리고 함수가 종료된 후에도 그 변경사항이 원래의 변수에 반영된다
 
 일반적으로 스위프트의 함수 매개변수는 상수로 취급되어서 함수 내부에서 변경할 수 없다
 하지만 inout 키워드를 사용하면 그 제약을 해제하고 해당 매개변수를 변수처럼 사용할 수 있다
 
 inout 매개변수를 사용하는 함수를 호출할 땐, 변수 앞에 & 기호를 붙여서 해당 변수의 참조를 전달한다
 
 이때 매개변수에 전달하는 값을 var 키워드로 선언한 변수어야 한다
 let 키워드로 선언한 상수를 전달할땐 함수를 호출하는 부분에서 에러가 발생한다.
 */

func swapNum(_ num1: inout Int, with num2: inout Int) {
   var tmp1 = num1
    num1 = num2
    num2 = tmp1
}
swapNum(&num1, with: &num2)
print("swapNum (2)", num1, num2)

/**
 Call By Reference
 
 할당이나 argument가 parameter로 전달될 때는 복사 붙여넣기가 실행된다
 Call By Reference 방식으로 함수를 호출하면 원본값의 주소를 복사해서 전달한다
 복사해서 전달한다는 것은 주소를 받는다는 것이고,
 주소를 받아서 할당하고 연산하면 실제 주소지에 있는 값을 대상으로 연산하게 된다
 즉, 원본에 영향을 받게 된다
 &: 실제 값의 주소를 의미한다.
 */

/**
 [Call By Value 값에 의한 호출]
 - 함수에 인자를 전달할 때 인자의 값을 복사해서 함수의 매개변수에 할당한다
 - 함수 내부에서 매개변수의 값이 변경되더라도 원래의 인자는 변하지 않는다
 - 원본데이터의 보호를 제공하지만, 복사의 오버헤드로 인해 큰 데이터 구조를 전달할때는 성능저하의 원인이 될 수 있다
 
 [Call By Reference 참조에 의한 호출]
 - 함수에 인자를 전달할 때 인자의 참조 또는 주소를 전달한다
 - 함수 내부에서 매개변수를 통해 원본 데이터를 변경할 수 있다
 - 함수에서 매개변수의 값을 변경하면 원래의 인자도 그대로 변경된다
 - 큰 데이터 구조를 전달할 때는 복사가 필요없기 때문에 이 방식이 더 효율적일 수 있다

 실제 사용
 - 스위프트에서 기본적으로 Call By Value 방식을 사용하지만
 - inout 키워드를 사용해서 특정변수를 참조로 전달할 수 있기 때문에 Call By Reference 효과를 얻을 수 있다.
 */
