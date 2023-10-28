import UIKit

/**
 Array: 배열
 같은 타입의 데이터가 순서대로 나열된 데이터
 Int배열, String배열, 구조체배열, 클래스(객체) 배열 등
 
 Collection
 1. List: 배열을 다루기 쉽게 만든 것
 2. Dictionary:
 3. Set(집합):
 */

// 배열의 기본 초기화자 호출해서 빈 배열을 생성한다

func 빈배열생성(){
    let arr = [Int]()
    print("배열의 기본 초기화자를 사용해서 빈배열 생성 : ",arr)
}

func 요소추가(){
    // 빈 배열 리터럴로 빈 배열을 생성한다
    var arr: [Int] = []

    // let키워드로 배열정의하면 append메서드로 요소추가를 할 수 없다
    arr.append(11)
    arr.append(22)
    arr.append(33)
    print(arr)
    dump(arr)
    print("33있는가: ", arr.contains(33))
    print("55있는가: ",arr.contains(55))
    print("arr길이: ", arr.count)

}

func 요소삭제(){
    var arr: [Int] = [1,2,3,4,5]
    arr.removeAll()
    print("removeAll 이후 =>", arr.isEmpty)

}

func 특정자리에요소추가(){
    var arr: [Int] = [1,2,3,4,5]
    arr.append(11)
    arr.append(22)
    arr.append(33)
    arr.append(44)
    arr.insert(1000, at: 3)
    print("index 3자리에 1000 추가했다. : ", arr)
    
    if let index = arr.firstIndex(of: 22) {
        print("22의 인덱스는 \(index)")
    }
}

/**
 배열과 관련된 데이터타입
 
 NS계열 (Objective-c 개발할때 사용됨)
 NSArray (Read Only)
 NSMutableArray (읽기와 쓰기 모두 가능)
 
 Swift계열
 Array (var, let)
 */

func NSArray로배열생성(){
/**
 objective-c 기반 Foundation 프레임워크에 포함된 NSArray 클래스를 사용해서 배열 생성한다
 
 NSArray
 Objective-c의 Foundation 프레임워크에서 제공되는 불변 배열 클래스이다
 다양한 타입의 객체를 저장할 수 있지만
 스위프트의 기본 배열과 달리, 타입이 명시적으로 정의되지 않아서 스위프트에서는 주로 기본 배열을 사용하지만
 코코아/코코아터치 라이브러리와의 상호작용이 필요할때 사용된다
 
 objects 초기화메서드
 NSArray의 초기화 메서드 중 하나이다
 가변 인수를 허용해서 여러 객체를 받아 NSArray 객체를 생성한다
 */
    let nsArray = NSArray(objects: "a", "b", "c")
    print("NSArray : ", nsArray)

/**
 NSArray를 기반으로 새로운 NSMutableArray 객체 생성한다
 
 NSMutableArray
 오브젝트C기반의 Foundation 프레임워크에서 제공되는 가변 배열 클래스이다
 해당 클래스를 사용하면 배열의 요소를 추가, 제거, 수정이 가능하다
 NSArray와 달리 배열의 내용을 수정할 수 있다
 
 array 초기화메서드
 기존의 NSArray또는 NSMutableArray 객체의 내용을 기반으로 새로운 NSMutableArray 객체를 생성한다
 */
    let nsMutableArray = NSMutableArray(array: nsArray)
    print("NSMutableArray : ", nsMutableArray)

    nsMutableArray.add("d")
    nsMutableArray.removeObject(at: 0)
}

// NSArray(immutable) -> Array로 변환하기


/**
 NSMutableArray를 Swift Array로 변환하기
 as: 형변환 연산자
 
 as? : 옵셔널 형변환 연산자
 nil이 아닌 경우에만 현변환한다
 */

func 타입캐스팅2(){
    let arr = NSMutableArray(objects: "a", "b", "c")
    if let arr01 = arr as? [String] {
        print(arr01)
    }
}


func 형태변환(){
    // Swift Array -> NSMutableArray 형변환
    let origin: [String] = ["a", "b", "c"]
    let arr01 = NSMutableArray(array: origin)

    // Swift Array -> NSArray 형변환
    let arr02 = NSArray(array: origin)
}


func 배열비교(){
    let arr01 = [1,2,3,4,5]
    let arr02 = [1,2,3,4,5]
    print("배열의 요소 값 비교하기 : ", arr01 == arr02)
}

func 요소변경(){
    var arr = [1,2.3]
    arr.replaceSubrange(0..<2, with: [4,5])
    print("배열의 요소 값 변경 : ", arr)
}

func 배열정렬(){
    var origin = ["라", "다", "바", "나", "가"]
    let arr = origin.sorted()
    print("배열 오름차순 정렬하기 : ", arr)
}

func 내림차순정렬(){
    var origin = ["라", "다", "바", "나", "가"]
    let arr = Array(origin.sorted().reversed())
    print("배열 내림차순 정렬하기 : ", arr)
}

func 특정범위에서요소추출(){
    let origin = ["라", "다", "바", "나", "가"]
    let arr = origin[0...1]
    print("특정 범위에서 요소 추출해서 배열로 생성하기 : ", arr)
}

func 객체배열생성(){
    // 구조체나 클래스의 객체를 배열로 생성하기
    struct Person {
        var name = "박은정"
        var age = 27
        func sayHello(){
            print("집에 가고 싶다")
        }
    }
    var arr: [Person] = []
    let p1 = Person()
    let p2 = Person()
    let p3 = Person()
    let p4 = Person()
    let p5 = Person()
    
    arr.append(p1)
    arr.append(p2)
    arr.append(p3)
    arr.append(p4)
    arr.append(p5)
    
    for person in arr {
        print(person.name, person.age)
        person.sayHello()
    }
}
