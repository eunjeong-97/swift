import UIKit

let score = 90

let scoreList: [Int] = [90, 80, 70, 60, 50]
let creditList: [String] = ["A", "B", "C", "D", "F"]

func checkScore(num:Int) -> String {
    if num < 0 || num > 100 {
        return "올바른 점수를 입력해주세요"
    }
    for (index, baseline) in scoreList.enumerated() {
        print(index, " ", baseline)
    }
    return ""
}

checkScore(num: score)
