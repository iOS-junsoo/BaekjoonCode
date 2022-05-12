let n = Int(readLine()!)! 
var inputs = readLine()!.split(separator: " ").map({Int($0)!})
var check = 0
var result = 0
inputs = inputs.sorted(by: <)
while true {
    for i in 0...check {
        result += inputs[i]  
    }
    check += 1
    if n - 1 < check {
        break
    }
}
print(result)