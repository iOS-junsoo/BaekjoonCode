let input = readLine()!
var dice = input.split(separator: " ")
let A = Int(dice[0])!
let B = Int(dice[1])!
let C = Int(dice[2])!
dice = dice.sorted(by: >)
if dice[0] == dice [1] && dice[1] == dice [2]{
    print(10000+(Int(dice[0])! * 1000))
} else if dice[0] != dice [1] && dice[1] != dice [2] {
    print(Int(dice[0])! * 100)
} else {
    print(1000+(Int(dice[1])! * 100))
}  
