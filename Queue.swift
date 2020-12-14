
// struct Queue<T> {
//     var array = [T]()

//     var isEmpty: Bool {
//         return array.isEmpty
//     }

//     var count: Int {
//         return array.count
//     }

//     var front: T? {
//         return array.first
//     }

//     mutating func enqueue(_ element: T) {
//         array.append(element)
//     }

//     mutating func dequeue() -> T? {
//         if isEmpty {
//             return nil
//         } else {
//             return array.removeFirst()
//         }
//     }
// }

// A queue is a FIFO (first-in, first-out) meaning that when an element is added, it will be the first to come out. Think of a normal queue or line.
// More advanced queues will keep track of the head, or first element, and instead of re-indexing on dequeue, it will add nil in place.


struct Queue<T> {
    var array = [T?]()

    // Front most object
    var head = 0

    var isEmpty: Bool {
        return count == 0
    }

    var count: Int {
        return array.count - head
    }

    var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }

    mutating func enqueue(_ element: T) {
        array.append(element)
    }

    mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }


        // Set the current head to nil
        array[head] = nil

        // Increase the head to the new location of the actual head
        head += 1

        5 / 10
        let percentage = Double(head) / Double(array.count)
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }

        return element
    }
}