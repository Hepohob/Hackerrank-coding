func sum(arr:Array<Int>) -> Int {
    var result = 0
    for i in 0 ..< arr.count {
        result += arr[i]
    }
    return result
}
let n = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!} 
var a1 = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!} 
var a2 = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!} 
var a3 = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!} 
var stop = false
var result = 0
var sum1 = sum(a1)
let sum2 = sum(a2)
let sum3 = sum(a3)
for i1 in 0 ..< n[0] {
//print("I1 sum1=\(sum1)------------------ ")
    var sm2 = sum2
    for i2 in 0 ..< n[1] {
//print("I2 sum1=\(sum1) sum2=\(sm2) sum3=\(sum3) ")
        if sum1 == sm2 {
            var sm3 = sum3
            for i3 in 0 ..< n[2] {  
//print("I3 sum1=\(sum1) sum2=\(sm2) sum3=\(sm3) ")
                if sum1 == sm3 {
//print("!!! \(sum1)==\(sm2)==\(sm3) ")
                    result = sum1 
                    stop = true
                    break
                }
                sm3 = sm3 - a3[i3]
                if sm2 > sm3 { break }
            }
        }
        if stop { break }
        sm2 = sm2 - a2[i2]
        if sum1 > sm2 { break }
    }
    if stop { break }
    sum1 = sum1 - a1[i1]
}
print(result)
