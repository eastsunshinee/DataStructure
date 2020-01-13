import Foundation

class Node<T> {
    
    let data: T
    var next: Node?
    init(data: T) {
        self.data = data
    }
}

class Stack<T> {
    
    var top: Node<T>?
    
    func push(_ data: T) {
        
        let oldTop = top
        top = Node(data: data)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        
        let currentTop = top
        top = top?.next
        return currentTop?.data
    }
    
    func peek() -> T? {
        
        return top?.data
    }
}

struct User {
    
    var name: String
    var age: Int
}


let me = User(name: "Kim", age: 20)
let you = User(name: "Park", age: 20)

let userStack = Stack<Any>()
userStack.peek()
userStack.push(me)
userStack.push(you)
userStack.pop()
userStack.peek()
userStack.pop()
userStack.peek()

