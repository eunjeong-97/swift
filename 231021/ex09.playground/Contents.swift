import UIKit

/*
 Optional
 값을 반환할 때 오류가 발생할 가능성이 있는 값을 Optional type의 객체로 감싸서 반환하는 문법이다.
 변수나 상수가 초기화되지 않은 경우 안전하게 처리하기 위해 사용된다.
 변수 선언부 (타입) 뒤에 ? 사용해서 선언한다.
 
 (?/!)로 선언한 변수를 초기화하지 않고 출력하면 nil을 반환하고
 값을 할당(초기화)하고 ...
 
 */

var num1: Int = 10
print(num1)

var num2: Int? = 10
print(num2)
print(num2!) // 강제 언래핑

var num3_1: Int
var num3_2: Int?
var num3_3: Int!
num3_1 = 10

print(num3_1)
print(num3_2)
print(num3_3)

var num4_1: Int? = 100
var num4_2: Int! = 200
print(num4_1)
print(num4_2)
print(num4_1!)
print(num4_2!)

/*
 숫자모양의 문자열을 Int type으로 형변환하면 숫자모양이기 때문에 오류가 발생하지는 않지만 옵셔널로 처리된다
 */

print(Int(123))
print(Int("123"))

// 숫자모양의 문자열이 아니기 때문에 Int type으로 형변환되지 않는다.
print(Int("swift"))


// 옵셔널 변수선언
var num5: Int?
var num6: Int = 0

num5 = 10

print("num5", num5)
print("num6", num6)

print("num5!", num5!)

// 연산하려면 언래핑된 상태이어야 한다
// num5 ?? 3: 옵셔널 변수에 값이 할당되어있으면 해당 값을 반환하고, 값이 할당되지 않았으면 ?? 키워드 뒤에 있는 기본값을 반환한다.
let new01 = (num5 ?? 3) + 3
print("옵셔널 연산", new01)


/*
 옵셔널로 선언된 변수를 옵셔널로 선언되지 않은 변수에 바로 할당할 수는 없다
 */
//num6 = num5 Error
num6 = num5 ?? 100
print("num6 ", num6)

// 강제 언래핑한 경우에는 옵셔널객체 속에 들어있던 값이 연산된다
// 초기화가 되지 않은 경우 (값이 nil인 경우) 다른 값과 연산된 값도 nil이 된다
// 초리화된 경우에는 언래핑된 값의 연산과 동일한 결과가 된다.
let new02 = num5! + 3
print("강제 언래핑", new02)
