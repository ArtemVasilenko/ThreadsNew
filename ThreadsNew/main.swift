import Foundation
func isSimple(_ num: Int) -> Bool {
    if num < 0 {
        return false
    }
    if Range(0...3).contains(num) {
        return true
    }
    for i in 2...num / 2 {
        if num % i == 0 {
            return false
        }
    }
    return true
}


for j in 0..<10 {
    var count = 0
    for i in 1000 * j..<1000 * j + 1000 {
        if isSimple(i) {
            count += 1
        }
    }
    print(1000 * j, " - ", 1000 * j + 1000, count)
}


