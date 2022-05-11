let subjectNum = readLine()!
var subjects = readLine()!.split(separator: " ").map{ Int($0)! }
var average = 0.0
subjects = subjects.sorted(by: >) //내림차순 정렬
for i in subjects {
    average += (Double(i) / Double(subjects[0])) * 100
}
print(average / Double(subjectNum)!)