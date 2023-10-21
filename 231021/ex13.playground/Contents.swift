import UIKit

// Optional Chaining

struct Contacts {
    var mail: [String: String]
    var address: String
}

struct Student {
    var name: String
    var contacts: Contacts
    
    // 생성자에서 구조체의 속성(멤버변수) 초기화한다.
    init (name: String, mail: String) {
        self.name = name
        // 구조체에 값을 할당해서 인스턴스 생성한다
        contacts = Contacts(mail: ["회사": mail], address: "마포구")
    }
}

func 논옵셔널객체(){
    print("논옵셔널 변수로 선언")
    let s1 = Student(name: "박은정 사원", mail: "beanlove97@gmail.com")
    let addr1 = s1.contacts.address
    let mails1 = s1.contacts.mail
    print("addr1", addr1)

    for mail in mails1 {
        print(mail)
    }
}

func 옵셔널객체(){
    print("옵셔널 변수로 선언")
    var s1: Student? = Student(name: "박은정 개인", mail: "eoss7777@naver.com")
    let addr1 = s1?.contacts.address

    s1 = nil
    let addr2 = s1?.contacts.address // nil로 도딤
    
    print("nil로 변경 이전: \(addr1 ?? "nil"), type: \(type(of: addr1))")
    print("nil로 변경 이후: \(addr2 ?? "nil"), type: \(type(of: addr2))")
}



