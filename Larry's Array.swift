let t = Int(readLine()!)!
for _ in 1...t {
    let n = Int(readLine()!)!
    var arr = String(readLine()!).characters.split{$0 == " "}.map(String.init).map { Int($0)!}
    var inv = 0;
    for i in 0..<n-1 { for j in i+1..<n { if arr[i] > arr[j] { inv += 1 } } }
    if inv%2 == 0 { print("YES") } else { print("NO") }    
}
