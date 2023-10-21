import UIKit

/*

continue: 이후에 나오는 모든 코드를 실행하지 않고 다음 반복으로 넘어간다
반복으로 넘어감 - (if문을 제외한) 자신이 속한 스코프에서
 
 break: 이후에 나오는 모든 코드를 실행하지 않고 반복을 종료한다.
 (if문을 제외한) 자신이 속한 스코프에서
 */

func 함수01(){
    for idx in 1...100 {
    //    print("첫줄: \(idx)")
        if idx < 5 {
            continue
        }
        if idx > 10 {
            break
        }
        print("마지막줄: \(idx)")
    }
}

func 구구단(){
    print("4단까지만 구구단실행")
    for first in 1...9 {
        if first >= 5 {
            continue
        }
        for second in 1...9 {
            print("\(first) X \(second) = \(first * second)")
        }
        print()
    }
}

func 구구단2(){
    print("6단만 제외한 구구단실행")
    for first in 1...9 {
        if first == 6 {
            print("처음으로 돌아감")
            continue
        }
        for second in 1...9 {
            print("\(first) X \(second) = \(first * second)")
        }
        print()
    }
    
}

func 구구단3(){
    print("각 단에서 7은 곱하지않고 구구단실행")
    for first in 1...9 {
        for second in 1...9 {
            if second == 7 {
                continue
            }
            print("\(first) X \(second) = \(first * second)")
        }
        print()
    }
}

func 구구단4(){
    for first in 1...9 {
        for second in 1...9 {
            if second == 7 {
                print("해당 반복문 종료")
                break
            }
            print("\(first) X \(second) = \(first * second)")
        }

        // break를 print 다음으로 작성하면 5단까지 출력하고 종료한다
        if first == 5 {
            print("해당반복문 종료")
            break
        }
        print()
    }
}

func 구구단5(){
    print("6단까지만 실행하고 종료")
breakPoint: for first in 1...9 {
        for second in 1...9 {
            if first == 6 {
                break breakPoint
            }
            print("\(first) X \(second) = \(first * second)")
        }
        print()
    }
}

구구단5()


