import UIKit

func 계산하다(_ n1: Int, _ n2: Int, type: String) -> Int? {
    switch type {
    case "더하기":
        return n1 + n2
    case "빼기":
        return n1 - n2
    case "곱하기":
        return n1 * n2
    case "나누기":
        return n1 / n2
    default:
        return nil
    }
}

print(계산하다(10, 20, type: "더하기") ?? "타입지정안함")
print(계산하다(10, 20, type: "빼기") ?? "타입지정안함")
print(계산하다(10, 20, type: "곱하기") ?? "타입지정안함")
print(계산하다(10, 20, type: "나누기") ?? "타입지정안함")


