//포인트는 - 이다.
var calculation = readLine()!.split(separator: "-").map {String($0)} 
let first = calculation[0].split(separator: "+").map {Int(String($0))!} 
var result = 0
var remain = 0
for i in first { // - 이전에 있던 수를 모두 더한다.
    result += i 
}
for j in 1..<calculation.count { //calculation 배열의 두번째 원소부터 마지막 까지 모두 더한다.
    let plus = calculation[j].split(separator: "+").map {Int(String($0))!} 
    for k in plus {
       remain += k
    }
}
print(result - remain)