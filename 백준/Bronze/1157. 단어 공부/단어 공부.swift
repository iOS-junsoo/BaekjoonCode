let word = readLine()!.uppercased()
var dict: [String:Int] = [:]
var result: [String] = []

for i in word {
    if dict[String(i)] == nil {
        dict[String(i)] = 1
    }else {
        dict[String(i)]! += 1
    }
}
for key in dict.keys {
    if dict[key] == dict.values.max() {
        result.append(key)
    }
}

print(result.count > 1 ? "?" : "\(result[0])" )

// 왜 아래의 코드는 안될까?
//let word = readLine()!
//let arr = Array(word.uppercased()) //word 대문자로 변경후 word 배열로 변경
//let removeArr = Set(arr) //중복 요소 제거
//var first = ""
//var count = 0
//var temp = 0
//
//for i in removeArr { // 중복제거한 배열로 기존 배열 검사
//    count = 0
//    for j in arr {
//        if i == j {
//            count += 1
//        }
//    }
//    if count > temp { //가장 큰 count 선정
//        temp = count
//        first = String(i)
//    } else if count == temp { //count가 같은게 있으면 ? 출력
//        first = "?"
//        break
//    }
//}
//print(first)