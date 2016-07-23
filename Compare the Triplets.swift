let a = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!}
let b = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!}
var alice = 0
var bob = 0
for i in 0...2 { 
if a[i]==b[i] { bob += 0 } 
else { if a[i] > b[i] { alice += 1 } else { bob += 1 } }
}
print("\(alice) \(bob)")
