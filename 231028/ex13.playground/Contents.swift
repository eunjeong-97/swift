import UIKit

/**
 Tuple
 
 (값1, 값2, 값3, ...)
 (이름1: 값1, 이름2: 값2, 이름3: 값3, ...)
 
 함수의 return 값은 항상 하나이기 때문에
 여러 값들을 튜플타입으로 묶어서 하나의 튜플을 반환하면
 여러 데이터를 반환할 수 있게 된다.
 */



func 값으로만튜플정의(){
    var tuple = (27, "eunjeong", true)
    print(tuple.0)
    print(tuple.1)
    print(tuple.2)
    let (age, name, now) = tuple
    print(age, name, now)
}

func 이름도추가해서정의(){
    let tuple02 = (age: 27, name: "eunjeong", now:true)
    print(tuple02.age, tuple02.name, tuple02.now)
}

func 함수리턴값(){
    func 정보받아온다() -> (Int, String, Bool) {
        return (27, "eunjeong",  true)
    }
    let (age, name, now) = 정보받아온다()
    print(age, name, now)
}

func 타입도지정(){
    typealias TupleType = (Int, String, Bool)
    let tuple: TupleType = (27, "eunjeong", true)
    print(tuple)
}

