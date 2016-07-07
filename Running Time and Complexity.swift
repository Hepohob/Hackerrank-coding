let t=Int(readLine()!)!
for _ in 1...t {
    let n=Int(readLine()!)!
    var res = "Prime"
    if n == 1 { res = "Not prime" } else {
    for (var i = 2; i*i <= n; i++) {
        if n%i == 0 {
            res = "Not prime"
            break
        }
    }
    }
    print(res)
}
