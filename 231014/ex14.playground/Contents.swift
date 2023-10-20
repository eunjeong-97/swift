import UIKit

let scoreList: [Int] = [90, 80, 70, 60]
let creditList: [String] = ["A", "B", "C", "D"]

// 점수에 따라 학점 리턴
func checkScore(num:Int) -> String {
    if num < 0 || num > 100 {
        return "올바른 점수를 입력해주세요"
    }
    var credit = "F"
    for (index, baseline) in scoreList.enumerated() {
        if(num>=baseline) {
            credit = creditList[index]
            break
        }
    }
    return credit;
}

var score = 90
print(score, checkScore(num: score))

score = 84
print(score, checkScore(num: score))

score = 75
print(score, checkScore(num: score))

score = 69
print(score, checkScore(num: score))

score = 50
print(score, checkScore(num: score))