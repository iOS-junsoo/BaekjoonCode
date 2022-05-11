import Foundation
var inputValues = readLine()!.split(separator: " ").map { Int($0)! }
var hour = inputValues[0]
var min = inputValues[1]
let time = Int(readLine()!)!

if min + time > 59 {
    hour += (min + time) / 60
    min = (min + time) % 60
} else {
    min = min + time
}
if hour > 23 {
    hour -= 24
}

print("\(hour) \(min)")