import UIKit

/**
 상속
 자식클래스는 부모클래스의 멤버를 상속받는다
 형식: class 자식클래스이름: 부모클래스
 */

class Parent {
    var name: String = "부모"
    var age: Int = 40
    func printNameAge(){
        print("이름과 나이:", self.name, self.age)
    }
}
class Child: Parent {
    
}

var child: Child = Child()
print(child.name)
print(child.age)
child.printNameAge()

/**
 getter, setter 함수
 */

class Person {
    var name: String = "eunjeong"
    var korAge: Int = 27
    // engAge 값을 읽을 때 자동으로 get 메서드가 호출된다
    // engAge에 값을 할당할때 set 메서드가 호출된다
    var engAge: Int {
        get {
            return korAge - 1
        }
        set(age){
            korAge = age + 1
        }
    }
}

print("==== getter, setter 함수 ====")
var p1: Person = Person()
print(p1.korAge)
print(p1.engAge)

print("=== engAge 값 할당 ===")
p1.engAge = 40
print(p1.korAge)
print(p1.engAge)

print("==== getter, setter 감시자 함수 ====")
struct People {
    var name: String = "eunjeong"
    var age: Int = 27 {
        /**
        감시자 함수
         willSet: 값이 할당되기 전에 호출된다
         didSet: 값이 할당된 후에 호출된다
         */
        willSet(newAge) {
            print("=== willSet: 값이 할당되기 전에 호출된다")
            print("원래 값: \(age)")
            print("새로 할당한 값: \(newAge)")
        }
        didSet(oldAge){
            print("=== didSet: 값이 할당된 후에 호출된다")
            print("이전 값: \(oldAge)")
            print("할당된 값: \(age)")
        }
    }
}

var p: People = People()
p.age = 30
