import UIKit

// Optional Chaining2
// 강사님은 대체 뭘 알려주고 싶으신건가

struct Contacts {
    var mail: [String: String]
    var address: String? // 옵셔널
}

struct Student {
    var name: String
    var contacts: Contacts? // 옵셔널
    
    init (name: String, mail: String) {
        self.name = name
        contacts = Contacts(mail: ["회사": mail], address: "마포구")
    }
    
    // 메서드 추가
    func getContacts() -> Contacts? {
        return contacts
    }
}


// String? 옵셔널 변수에 count 속성 불러오려니까 에러발생함
let s1: Student = Student(name: "박은정 회사", mail: "beanlove97@gmail.com")
let addr1 = s1.contacts?.address

// let addrCount: Int = addr1.count
let addrCount: Int = addr1!.count
print(addrCount)

s1.getContacts()
