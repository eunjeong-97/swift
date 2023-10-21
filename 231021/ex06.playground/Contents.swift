import UIKit

/*
 중첩 for문
 nested for statement
 
 구구단
 단수 X 곱하는 수
 1      1~9
 2      1~9
 3      1~9
 4      1~9
 5      1~9
 6      1~9
 7      1~9
 8      1~9
 9      1~9
 */

for first in 1...9 {
    print("====== \(first)단 =====")
    for second in 1...9 {
        print("\(first) X \(second) = \(first * second)")
    }
    print("")
}
