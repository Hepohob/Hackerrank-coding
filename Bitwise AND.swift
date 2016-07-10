let t = Int(readLine()!)!
for _ in 1...t {
    let arr = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!} 
    let n = arr[0]
    let k = arr[1]
    var mx = 0
    for a in 1 ..< n-1 {
        for b in a+1 ... n {
            if a&b < k && a&b > mx { mx = a&b }
        }
    }
    print (mx)
}
