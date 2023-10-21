import UIKit

let n = 1
switch n {
case 0...10:
    print("0~10")
default:
    print("그 외의 숫자")
    break
}


struct Size {
    var width = 0.0
    var height = 0.0
    
    /*
     left: Range<Int>
     case 구문에 오는 value의 type으로 지정한다
     
     right: Size
     switch 키워드 다음에 오는 value의 type으로 지정한다
     */
    static func ~= (left: Range<Int>, right: Size) -> Bool {
        
        /*
         Size 구조체 인스턴스의 width값이 switch문의 케이스의 범위에 해당하는 경우 true를 리턴한다
         */
        return left.contains(Int(right.width))
    }
}

let size01 = Size(width:10, height: 20)

switch size01 {
    // static 키워드를 제거하면 Operator '~=' declared in type 'Size'  must be 'static' 에러가 발생한다
case 1..<10:
    print("한자리")
case 10..<100:
    print("두자리")
default:
    break
}
