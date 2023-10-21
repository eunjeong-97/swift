import UIKit

/*
 Optional 변수 사용할 때
 
 ? :
 
 
 !을 사용한 언래핑
 implicity inwrapped optional
 optional로 사용되지 않는 경우, 자동으로 unwrapping한다.
 !을 사용해서 선언한 옵셔널 변수를 옵셔널이 아닌 변수에 할당하면 자동으로 (암시적으로) 언래핑된다.
 
 */

func 옵셔널바인딩1(){
    let n1: Int! = 1
    let n2: Int = n1!
    let n3 = n1
    print("n1 || \(n1!), type: \(type(of: n1))")
    print("n2 || \(n2), type: \(type(of: n2))")
    print("n3 || \(n3!), type: \(type(of: n3))")
}

func 옵셔널바인딩2() {
    let n1: Int! = 1 // Int! 로 선언
    let n2: Int = n1 // 할당할때 ! 사용하지 않음 -> 옵셔널로 사용하지 않는다
    let n3 = n1
    
    print("n1 || \(n1!), type: \(type(of: n1))")
    print("n2 || \(n2), type: \(type(of: n2))")
    print("n3 || \(n3!), type: \(type(of: n3))")
}

/*
 if를 사용한 Optional Binding
 while를 사용한 Optional Binding
 guard를 사용한 Optional Binding
 */


func 옵셔널바인딩3(){
    print("일반 if문")
    var num: Int?
    
    if num != nil {
        print(num!)
    } else {
        print("nil")
    }
    
    print("if문을 사용한 옵셔널 바인딩")
    if let num {
        print(num)
    } else {
        print("nil")
    }
}

func 옵셔널바인딩4(){
    print("옵셔널 변수에 값을 할당하기 전에 guard를 사용한 옵셔널 바인딩")
    var str1: String?
    
    // 옵셔널 변수 str1이 nil인 경우에 코드블럭 내부가 실행된다
    guard var str1 = str1 else {
        print("str1은 nil이다.")
        // fatalError()
        return
    }
    // 실행안됨
    print("str1", str1)
}

func 옵셔널바인딩5(){
    print("옵셔널 변수에 값을 할당한 다음에 guard를 통해 옵셔널 바인딩")
    var str1: String? = "eunjeong"
    guard let str1 = str1 else {
        print("str1은 nil이다.")
        fatalError()
    }
    print("str1: ", str1)
}

func 옵셔널바인딩6(){
    print("옵셔널 바인딩한 값을 변경할 땐 var 키워드를 사용하기도 한다")
    var num: Int? = 123
    if var num = num {
        num = 987
        print(num)
    } else {
        print("num값이 nil이여!")
    }
}
