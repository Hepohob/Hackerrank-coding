let arr = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!} 
var x1 = arr[0]
let v1 = arr[1]
var x2 = arr[2]
let v2 = arr[3]
var res = "NO"
if v2>=v1 { res = "NO" } else {
    while x1 < x2 {
        x1 = x1 + v1
        x2 = x2 + v2
        if x1 == x2 {
            res = "YES"
            break
        }
    }
}
print(res)
