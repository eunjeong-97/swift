import UIKit

/**
 함수의 타입
 
 (parameter type) -> return type
 
 First Citizen (함수를 변수처럼 사용할 수 있다)
 - 함수를 변수에 할당할 수 있다
 - 함수를 파라미터로 지정할 수 있다
 - 함수를 리턴값으로 지정할 수 있다
 */

func test(with name: String){
    print(name)
}

//let number: Int = 100

/**
 함수 타입의 변수에는 argument label이 포함되지 않기 때문에
 함수 타입의 변수를 호출할때 argument label을 사용하면 에러가 발생한다.
 */
let test01: (String) -> () = test
test01("argument label을 사용하지 않고 함수를 호출한다")

/**
 함수의 주소를 할당받은 변수로 함수를 호출할땐
 argument label을 명시하지 않아야 한다
 */
let test02: (String) -> () = test(with:)
test02("함수의 주소를 할당받은 변수로 함수를 호출할땐 argument label 명시하지 않는다.")

struct Obj {
    let function: (String) -> ()
    func with(_ name: String) {
        function(name)
    }
}
let obj = Obj(function: test)
obj.with("구조체의 인스턴스인 obj에서 argument label을 사용해서 메서드를 호출한다")
