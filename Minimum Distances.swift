let n = Int(readLine()!)!
let arr = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!}
var res:[Int] = []
for i in 0 ..< n-1 {
    for j in i+1 ..< n {
        if arr[i] == arr[j] { res += [abs(i-j)] }
    }
}
if res.count == 0 { res += [-1]}
print(res.minElement()!)
