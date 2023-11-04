import UIKit

/**
 구조체 & 클래스
 structure | enum | class
 |-|-|-|
 | 형식 | valye type | value type | reference type |
 | 상속 | false | false | false
 | extension | | |
 |-|-|-|
 */

struct Student {
    var name = "학생"
    var age = 20
    func printName(){
        print(self.name)
    }
    
}

/**
 구조체의 instance를 생성해서 변수에 할당하면
 instance 자체가 변수공간에 저장된다
 */

var student: Student = Student()
print("==== 구조체 dump vs print ====")
dump(student)
print(student)

print(student.name)
print(student.age)

/** value type 구조체 복사하기 */
let student2 = student
print("==== value type 구조체 복사하기 ====")
print(student2)
print(student2.name)
print(student2.age)

class Teacher {
    var name: String = "선생님"
    var age: Int = 40
    func printName(){
        print(self.name)
    }
}

/** class의 instance 생성
    멤버변수를 명시적으로 초기화하거나 생성자를 사용해서 직접 초기화해야 한다
 */
print("==== class의 instance 생성 ====")
var teacher1: Teacher = Teacher()
print(teacher1)
print(teacher1.age)
print(teacher1.name)
teacher1.printName()


class Officer {
    var name: String
    var age: Int

    /**
     생성자 함수
     instance가 생성될때 멤버변수를 초기화한다.
     instance가 생성될 때 자동으로 호출된다
     class의 인스턴스를 생성할때 클래스 내부에서 직접 명시하지 않으면 생성자 함수가 필요하다
     parameter가 있는 생성자를 작성하면 기본생성자는 자동으로 작성되지 않는다
     */
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // 생성자 오버라이딩
    init(name: String) {
        self.name = name
        self.age = 10
    }
    
    // 기본생성자: 파라미터가 없는 생성자
    init(){
        self.name = "춘식이"
        self.age = 100
    }
    
    /**
     소멸자
     instance가 소멸될때 자동으로 호출된다.
     아무것도 안해도 되지만 초기화시켜줄 수 있다
     */
    deinit {
        self.name = ""
        self.age = 0
    }
    
    
    func printInfo(){
        print("이름: ", self.name)
        print("나이: ", self.age)
    }
}

/**
class의 instance 생성
 1. 생성자의 파라미터로 멤버변수 초기화
 2. 생성자함수 오버라이딩
 */
print("==== class의 instance 생성2  ====")
var officer1: Officer = Officer(name: "박은정", age: 27)
officer1.printInfo()


var officer2: Officer = Officer(name: "나이가 없는 박은정")
officer2.printInfo()

var officer3: Officer = Officer()
officer3.printInfo()

