import UIKit

var n = 1000
switch n {
    // let m 으로 하는경우 아래와 같은 에러 발생함
    // cannot assign to value: 'm' is immutable
    // case 구문에서 변수에 값을 할당하는 경우 var 키워드로 선언해야 함
    case var m where m > 100:
        // value binding
        m = 200
        print(m)
    default:
        break
}

// tuple: 하나 이상의 값을 ()로 묶어줌
let nums = (1,2)


// default will never be executed
// switch문에서 모든 가능한 경우가 이미 처리되었는데도 default 케이스가 있을때 발생하는 에러
switch nums {
case (let n1, let n2):
    print(n1, n2)
//default:
//    break
}


// _ (wild card)
// 사용하지 않을 값이라서 binding하지 않을때 사용한다
switch nums {
case let (n1, _):
    print(n1)
//default:
//    break
}
