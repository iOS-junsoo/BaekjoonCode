let T = Int(readLine()!)!
for _ in 1...T {
    let k = Int(readLine()!)! //층
    let n = Int(readLine()!)! //호수
    var arr = [[String]](repeating: Array(repeating: "1" ,count: k + 1 ), count: n) //모두가 1인 2차원 배열 생성
for i in 1...n { //0층에 호수마다 사람수 부여(기초과정)
    arr[i - 1][0] = String(i)
}
if n > 1 { // 0층 이상일 
    for i in 1...n - 1 { //호수
        for j in 1...k { //층
            arr[i][j] = String(Int(arr[i - 1][j])! + Int(arr[i][j - 1])!)
        }
    }
}
print(arr[n - 1][k])

}
