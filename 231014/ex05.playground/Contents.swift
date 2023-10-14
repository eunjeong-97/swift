import UIKit

/* String Type */
var str01 = ""
print("빈문자열인가", str01.isEmpty)

str01 = "더조은"
print("빈문자열인가", str01.isEmpty)

let num01 = 1234
let str02 = "1234"
print("값 자체출력 => num01: \(num01) || str02: \(str02)")
print("값 자체출력 => num01: \(type(of: num01)) || str02: \(type(of: str02))")

/* Character Type
 Character Type 으로 사용하려면 타입을 명시해줘야 한다
 타입을 지정하지 않으면 타입추론으로 인해 String타입으로 변환됨
 문자 하나만 할당할 수 있음 (한글자만 지정가능)
 */
let chr01 = "1"
let chr02: Character = "1"
print("chr01: \(type(of: chr01)) || chr02: \(type(of: chr02))")
// let chr03:Character = "12"

/* Type Inference 타입추론
 타입을 명시하지 않은 경우, 할당되는 데이터에 의해 자동으로 타입을 결정함
 
 data | type
 1234 | Int
 1.23 | Double
 "hello" | String
 true/false | Bool
 */

