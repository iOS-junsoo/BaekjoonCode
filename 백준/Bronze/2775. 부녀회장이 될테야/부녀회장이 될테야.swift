let T = Int(readLine()!)!
for _ in 1...T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    var arr = [[String]](repeating: Array(repeating: "1" ,count: k + 1 ), count: n)
for i in 1...n {
    arr[i - 1][0] = String(i)
}
if n > 1 {
    for i in 1...n - 1 {
        for j in 1...k {
            arr[i][j] = String(Int(arr[i - 1][j])! + Int(arr[i][j - 1])!)
        }
    }
}
print(arr[n - 1][k])

}