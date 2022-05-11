let num = Int(readLine()!)!
var count = 0
if num < 100 {
    print(num)
} else {
    for i in 100...num {
        var one = i / 100
        var two = (i % 100) / 10
        var three = (i % 100) % 10
        if one - two == two - three {
            count += 1
        }
    }
    print(count + 99)
}