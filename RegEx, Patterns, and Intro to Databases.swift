import Foundation
var pattern = ".+@gmail\\.com$"
let t = Int(readLine()!)!
var result:[String] = []
for _ in 1...t {
    let arr = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{String($0)}
    let name = arr[0]
    let email = arr[1]
    if email.rangeOfString(pattern, options: .RegularExpressionSearch) != nil { result += [name] }
}
for element in result.sort() {
    print(element)
}
