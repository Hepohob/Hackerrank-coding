class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of class Node

// Start of class Tree
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
    
    func levelOrder(root: Node?) {
        var elements:[Node] 
        if root != nil { elements = [root!] } else { return }     
        while elements.count != 0 {
            let element = elements[0]
            elements.removeAtIndex(0)
            print(element.data,terminator:" ")
            if element.left != nil { elements.append(element.left!) }        
            if element.right != nil { elements.append(element.right!) }
        }
    } // End of function levelOrder
} // End of class Tree

var root: Node?
var tree = Tree()

var t = Int(readLine()!)!

while t-- > 0 {
    root = tree.insert(root, data: Int(readLine()!)!)
}

tree.levelOrder(root)
