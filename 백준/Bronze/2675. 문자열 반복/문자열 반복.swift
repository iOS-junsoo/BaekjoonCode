for _ in 1...Int(readLine()!)!{
    var result = ""
    let a = readLine()!.split(separator:" ")
    let word = a[1] 
    var alpha: [Character] = []
        for i in 0..<word.count {
        alpha.append(word[word.index(word.startIndex, offsetBy: i)])
    }
    for i in 0..<word.count{
        for _ in 1...Int(a[0])! {
            result += String(alpha[i])
        }
    }
    print(result)
}