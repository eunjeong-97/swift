import UIKit

/**
 protocol
 가상함수: 함수의 선업부만 있고 구현부가 없는 함수
 프로토콜은 다중 상속이 가능하다.
 */

protocol Talkable {
    // getter만 있음: 읽기 속성만 있다
    var lang: String { get }
    
    // getter, setter 둘다 있음: 읽기, 쓰기 속성 모두 있음
    var topic: String { get set }
    
    // 가상함수: 함수의 선언부만 있고 구현부는 없다
    func talk()
}

protocol Runnable {
    // 가상함수
    func run()
}

// 부모 프로토콜: Talkable, Runnable
struct Person: Talkable, Runnable {
    
    // 부모 프로토콜에서 설정한 type을 준수해서 변수를 선언한다.
    var lang: String
    var topic: String
    
    func printInfo(){
        print("lang: \(lang) // topic: \(topic)")
    }
    
    // 부모프로토콜의 가상함수 talk, run을 상속받아서 재정의했다(=오버라이딩했다)
    func talk() {
        print("말한다~~")
    }
    func run() {
        print("뛴다~~")
    }
}

var p1: Person = Person(lang: "korean", topic: "program")
p1.talk()
p1.run()
p1.printInfo()

/**
 overloading 오버로딩
 함수의 매개변수부를 다르게 해서 함수의 이름이 동일해도 중복오류가 발생하지 않는 문법이다.
 이름이 같아도 매개변수가 다르면 서로 다른 함수로 인식한다.
 
 overriding 오버라이딩
 자식에서 부모의 함수를 상속받아서 자식에 맞게 재정의하는 문법이다.
 부모에서 정의한 함수의 선언부한 자식에서 재정의한 함수의 선언부가 일치해야 한다.
 일치하지 않으면 오버라이딩한 것이 아니라, 자식에서 새로 선언한 새로운 함수가 된다.
 */

print("부모의 함수를 상속받아서 그대로 사용한다.")
class ParentA {
    func printName(name: String) {
        print("이름: \(name)")
    }
    func printNameAge(name: String, age: Int) {
        print("이름: \(name), 나이: \(age)")
    }
}
var parent = ParentA()
parent.printName(name: "eunjeong")
parent.printNameAge(name: "eunjeong", age: 27)

class ChildA: ParentA {}
var child = ChildA()
parent.printName(name: "suho")
parent.printNameAge(name: "suho", age: 7)


print("overriding(오버라이딩): 부모의 함수를 상속받아서 자식에 맞게 재정의한다")
class Animal {
    func sound(){
        print("크와아아앙")
    }
}
class Dog: Animal{
    override func sound() {
        print("왈왈왈왈")
    }
}
class Cat: Animal{
    override func sound() {
        print("그르르르르릉")
    }
}

var animal = Animal()
var dog = Dog()
var cat = Cat()

animal.sound()
dog.sound()
cat.sound()

var animals: [Animal] = [animal, dog, cat]
print(type(of: animals))

/**
 다형성 polymorphism
 동일한 형태의 코드가 실행할 때 들어오는 객체가 달라짐에 따라서 다른 경과를 반환한다.
 
 */
for i in animals {
    i.sound()
}
