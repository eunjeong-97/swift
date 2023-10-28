import UIKit

/**
 Dictionary
 
 JSON: JavaScript Object Notation
 
 */

func 딕셔너리(){
    var dict: [String: String] = ["name": "eunjeong", "age": "27", "address":"마포구"]
    
    dict["weight"] = "100"
    print(dict)
    
    for (key, value) in dict {
        print("\(key) : \(value)")
    }
    
    dict.removeValue(forKey: "weight")
    print(dict) // index가 없기때문에 순서가 지켜지지 않음
    
    print(dict.count)
}

func Set(){
    // 집합
    var set: Set<Int> = []
    
    set.insert(11)
    set.insert(22)
    set.insert(33)
    set.insert(44)
    set.insert(55)
    
    print(set) // index가 없기때문에 순서가 지켜지지 않음
    
    let set02: Set<Int> = [100,200,300,400]
    
    let 교집합 = set.intersection(set02)
    let 합집합 = set.union(set02)
    let 차집합 = set.subtracting(set02)
    
    print("교집합", 교집합)
    print("합집합", 합집합)
    print("차집합", 차집합)
}

Set()
