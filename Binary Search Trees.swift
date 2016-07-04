class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= root?.data {
            root?.left = insert(root?.left, data: data)
        } else {
            root?.right = insert(root?.right, data: data)
        }
            
        return root
    }
    
    func getHeight(root: Node?) -> Int {
    if root == nil { return -1 }
        let countr = getHeight(root!.left)
        let countl = getHeight(root!.right)
        return 1 + max(countr,countl)
        	} // End of getHeight function
} // End of Tree class

var root: Node?
var tree = Tree()

var t = Int(readLine()!)!

while t > 0 {
    root = tree.insert(root, data: Int(readLine()!)!)
    t = t - 1
}

print(tree.getHeight(root))
