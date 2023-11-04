import UIKit

/**
 형변환 type casting
 */

let int1: Int = 10
let float1: Float = 3.141592
let str1: String = "123123"

let double1: Double = Double(int1)
let int2: Int = Int(float1)
let str2: String = String(int1)

// 숫자 모양의 문자열만 Int Type으로 형변환되기 ㄸ문에
// 숫자 모양이 아닌 문자열일때 nil을 허용하는 Optional로 받아야 한다
let int3: Int? = Int(str1)

// nil인 경우 안전하게 unwrapping 하기위해 opotional binding 사용한다.
if let int4 = Int(str1) {
    // str1이 숫자모양인 문자열일 때만 Int Type으로 형변환이 성공한다.
    print("int4: \(int4)")
} else {
    print("str1이 숫자모양의 문자열이 아니라서 형변환 실패했다.")
}

print("==== 형변환 실패 ====")
let str3: String = "eunjeong"
let int5: Int? = Int(str3)
print(int5 ?? "nil")
if let int6 = Int(str3) {
    print("int6: \(int6)")
} else {
    print("str2이 숫자모양의 문자열이 아니라서 형변환 실패했다.")
}

// is연산자: 상속관계인 클래스의 instance 속성을 검사한다
class GrandParent {}
class Parent: GrandParent {}
class Child: Parent {}

var grand = GrandParent()
var parent = Parent()
var child = Child()

print("Parent 클래스를 상속받았는가: instaceOf 메서드와 유사하다")
print("grand", grand is Parent)
print("child", child is Parent)

// as : 형변환 연산자
var grand2: GrandParent?
var parent2: Parent?
var child2: Child?

parent2 = grand as? Parent
child2 = parent as? Child

// ?? : nil이면 default값을 지정한다.
parent2 = grand as? Parent ?? Child()

var str5: String?
var str6: String

str6 = str5 ?? "default"
print("str6: \(str6)")

// as! : nil이어도 의도적으로 강제 형변환한다.

/**
 부모타임참조변수 as? 자식클래스
 부모타입의 참조변수를 자식타입으로 형변환한다.
 형변환이 안된는 경우, nil을 반환한다
 Optional Type으로 반환하기 때문에 오류가 발생하지 않는다
 
 부모타입참조변수 as? 자식클래스
 부모타입의 참조변수를 자식타입으로 형변환한다.
 형변환이 안되는 경우 nil을 반환한다.
 일반타입으로 반환하기 때문에 오류가 발생할 수 있다.
 
 */
var parent3: Parent?
//parent3 = grand as! Child 오류발생
parent3 = grand as? Child

