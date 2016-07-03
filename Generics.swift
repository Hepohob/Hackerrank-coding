struct Printer<type> {
func printArray<type> (items:[type]) {
    for item in items {
        print(item)
    }
}
} 

let vInt = [1, 2, 3]
let vString = ["Hello", "World"]

Printer<Int>().printArray(vInt)
Printer<String>().printArray(vString)
