import UIKit

/**
 Optional Chaining
 nil 체크를 편리하게 해준다.
 
 Optional 변수 관련 기능
 1. 옵셔널 바인딩: `if let`
 2. 강제 언래핑:`!`
 3. `guard let` ,` guard else`
 4. 형변환: `sd?` (nil이 아닌 경우에만 형변환해준다)
 5. 기본값 : `??` 기본값
 */

class Contact {
    // name, phone 은 초기화되지 않음
    var name: String?
    var phone: String?
    var mail: String = ""
}

class Person {
    var contact: Contact?
}

/**
 print
 일반적으로 스위프트에서 값을 콘솔에서 출력할 때 사용된다.
 주로 사용자가 보기 좋게 포맷된 형태를 출력한다
 
 dump
 객체 내부의 세부정보를 자세히 보여준다.
 주로 디버깅에 유용하다
 출력 내용에는: 속성, 값, 객체의 자세한 계층 구조가 포함될 수 있다.
 
 =>
 print: 사용자 친화적인 출력을 위해 사용된다
 dump: 객체의 내부 구조를 자세히 살펴보기 위해 주로 사용된다
 */

var p1 = Person()
print("1. 원래 p1 dump값: p1.contact => nil로 초기화안함")
dump(p1)

print("contact를 nil로 초기화하지 않았기 때문에 contact.name이 존재한다")
p1.contact?.name = "eunjeong"
dump(p1)

print("옵셔널 바인딩으로 처리하기")
if let p2 = p1.contact {
    p2.name = "eunjeong"
    dump(p2)
} else {
    print("p1.contact는 nil이다.")
}

print("------------------------------------------")
print("2. p1.contact => nil로 초기화")
p1.contact = nil

print("contact를 nil로 할당하면 contact에 접근해봤자 nage, age, mail 요소가 없다")
p1.contact?.name = "eunjeong"
dump(p1)

print("옵셔널 바인딩으로 처리하기")
if let p2 = p1.contact {
    p2.name = "eunjeong"
    p2.phone = "000-0000-0000"
    p2.mail = "beanlove97@gmail.com"
    dump(p2)
} else {
    print("p1.contact는 nil이다.")
}
