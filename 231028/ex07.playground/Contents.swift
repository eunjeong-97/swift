import UIKit

/**
 내부함수 nested function
 함수 안에서 함수 작성한다.
 
 넓은 스코프에서 좁은 스코프에 접근못하지만
 좁은 스코프에서 넓은 스코프에 접근가능하다
  */

func outer() -> (Int)->Int {
    var num1 = 10
    var num2 = 10
    var num3 = 10
    
    func inner(num: Int) -> Int {
        print("inner")
        return num + num1 + num2
    }

    print("outer")
    return inner
}

//outer()
let num = outer()(20)
print(num)
