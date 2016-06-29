class Solution {
    var stack = [Character]()
    var queue = [Character]()
    func pushCharacter(c:Character) {
        stack += [c]
    }
    func enqueueCharacter(c:Character) {
        queue += [c]
    }
    func popCharacter() -> Character {
        let c = stack.last
        stack.removeAtIndex(stack.count-1)
        return c!
    }
    func dequeueCharacter() -> Character {
        let c = queue.first
        queue.removeAtIndex(0)
        return c!  
    }
}
// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for c in s.characters {
    obj.pushCharacter(c)
    obj.enqueueCharacter(c)
}

var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for (var i = 0; i < s.characters.count / 2; i++) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false
        
        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
