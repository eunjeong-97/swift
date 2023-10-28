import UIKit



func test(name:String){
    print("함수선언부에서 name은 paramter name")
}
test(name:"함수호출부에서 name은 argument label")

/**
 to: argument label
 함수를 호출할 때 사용되는 레이블이다
 스위프트에서는 함수의 매개변수에 두 개의 레이블(이름)을 제공할 수 있다
 하나는 호출할 때 사용하고 다른 하나는 함수 내부에서 사용된다
 
 함수를 호출할때, 이 레이블을 사용해서 매개변수 역할을 명확하게 표시할 수 있다
 
 name: paramter name
 함수 내부에서 해당 매개변수의 값을 참조할 때 사용되는 이름이다
 
 =>
 스위프트의 가독성을 높이는데 크게 기여한다
 함수를 호출할땐, to 레이블이 있으면 해당 함수가 어떤 동작을 하는지 더 쉽게 이홰할 수 있다
 함수 내부에서는, name 이름만을 사용해서 코드를 간결하게 유지할 수 있다
 
 to [argument label]
 함수를 호출하는 사람이 매개변수의 의도를 더 이해하기 쉽게 도와주는 역할을 한다
 
 name [parameter name]
 함수 내부에서 해당 값에 접근할 수 있도록 해준다.
 */

func test(to name: String) {
    print("\(name), 함수 내부에서는 name 매개변수명으로 접근한다.")
}
test(to: "함수를 호출할땐 to라는 argument label을 사용하지만")



/*
 argument label에 와일드카드 문자 `_` 사용하면
 함수를 호출할때 argument label을 지정하지 않아도 된ㄷ
 */

func hello(_ name: String) {
    print("\(name), 함수 내부에서는 name 매개변수명으로 접근한다.")
}

hello("argument label에 와일드카드를 사용했기 때문에 함수를 호출할때 argument label을 지정하지 않아도 된다.")
