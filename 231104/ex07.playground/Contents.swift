import UIKit

/**
 extension
 
 기존 소스를 변현하지 않고 다른 이름의 함수를 추가해서 확장한다
 
 클래스, 구조체, 열거형, 기본 자료형에 추가적으로 기능을 확장할 수 있다.
 
 Extendsion
 수평확장
 클래스, 구조체,  열거형, 기본 자료형에 사용함
 재정의불가능
 
 상속
 수직확장
 클래스에서만 사용함
 재정의해서 사용한다.
 */

print("==== getter 추가 ====")
extension Int {
    var IsEven: Bool {
        get {
            return self % 2 == 0
        }
    }
    var isOdd: Bool {
        get {
            return self % 2 == 1
        }
    }
}

var int1: Int = 10
print("int1.IsEven: \(int1.IsEven)")

int1 = 20
print("int1.isOdd: \(int1.isOdd)")

print("==== 함수추가 ====")
extension Int {
    func multi(by n: Int) -> Int {
        return self * n
    }
}
print("int1.multi(by: 4): \(int1.multi(by: 4))")
