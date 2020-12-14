// A stack is simply a LIFO (last-in, first-out) meaning that every item is added to the end of an array or removed from the end.
// O(1) as it's easy to push to the end of an array, pushing to the start is not.
// [1, 2, 3] -> pop() -> 3
// [1, 2, 3] -> push(4) -> [1, 2, 3, 4]

struct Stack<T> {
    var array = [T]()

    var isEmpty: Bool {
        return array.isEmpty
    }

    var count: Int {
        return array.count
    }

    var top: T? {
        return array.last
    }

    mutating func push(_ element: T) {
        array.append(element)
    }

    mutating func pop() -> T? {
        array.popLast()
    }
}