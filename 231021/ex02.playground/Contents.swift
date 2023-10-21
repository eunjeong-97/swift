import UIKit

/* guard 조건문
 
 형식
 guard 조건 else {
    // 조건이 false일때 실행
 }
 // 조건이 true일때 실행
 
 조건 false -> {} 내부의 코드 실행
 조건 true -> {} 외부의 코드 실행
 
 guard Optional Binding else {
    // 명령문
 }
 
 */

func validate(id: String?) -> Bool {
    guard let id = id else {
        print("옵셔널바인딩: id가 nil")
        return false
    }
    // id: 옵셔널이 아닌 String 타입으로 안전하게 사용가능
    guard id.count >= 6 else {
        print("6글자 미만")
        return false
    }
    print("6글자이상")
    return true
}

validate(id: "swiftui")
validate(id: "hello")
validate(id: nil)

