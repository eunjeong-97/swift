import UIKit

// Struct Type:
struct Point {
    // let키워드로 선언하면 p1, p2 초기화할때 에러가 발생한다
    var x = 0.0
    var y = 0.0
}
let p1 = Point(x: 12, y: 34)
let p2 = Point(x: 67, y: 89)

print(p1)
print(p2)

/*
 print(p1 == p2) 실행하게 되면 아래와 같은 에러가 발생한다
 [Binary operator '==' cannot be applied to two 'Point' operands]
 에러내용: 두 개의 Point 구조체 인스턴스 p1와 p2를 비교할때 == 연산자를 사용할 수 없다
 Swift에서 사용자가 정의한 구조체에서 기본적인 비교 연산을 직접 구현해줘야 한다
 (= 사용자 정의 데이터타입에 대한 기본 비교연산은 제공안됨)
 */

// 해결방법: 직접 비교해야 함
// Point 구조체를 Equatable 프로토콜을 채택하도록 확장
extension Point: Equatable {
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
}
let p3 = Point(x: 12, y: 34)
let p4 = Point(x: 67, y: 89)
print(p3 == p4)

