import Foundation // 문제를 좀 잘 보자. - https://icksw.tistory.com/75 참고
let inputValues = readLine()!.split(separator: " ").map { Int($0)! }
let N = inputValues[0]
var k = inputValues[1]
var coinsValue = [Int]() 
for _ in 0..<N { coinsValue.append(Int(readLine()!)!) }
var result = 0 // 결과 값
var count = 0 // valueK의 자리수 
coinsValue = Array(coinsValue.reversed()) //동전의 가치를 내림차순으로 변경
for i in coinsValue { 
    if i <= k{ // K와 i의 값이 같거나 보다 작을경우 -> k를 i로 나눌 수 있는 경우
        result += k / i
        k = k % i
    }
    if k == 0 {
        break
    }
}
print(result)