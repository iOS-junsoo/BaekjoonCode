var N = readLine()!
var caseNum = [String]()
var flag = 0
for i in 0...N.count {
    for j in 0..<N.count - i {
        let rangeStartIndex = N.index(N.startIndex, offsetBy: j)
        let rangeEndIndex = N.index(N.endIndex, offsetBy: -(N.count - flag) + j )
        let ellSubstring = N[rangeStartIndex...rangeEndIndex]
        caseNum.append(String(ellSubstring)) 
    }
    flag += 1
}
print(Set(caseNum).count) //set의 중복제거 성질을 
