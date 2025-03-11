//: [Previous](@previous)

import BCTCI

// MARK: - 25.1- Implement Dynamic Array
var d = DynamicArray()
d.append(1)
d.append(2)
d.append(7)
d.append(100)
d.append(21)
d.append(23)
d.get(at: 0)
d.get(at: 1)
d.sizeOf()
d.popBack()
d.sizeOf()

// MARK: - 25.2- Extra Dynamic Array Operations
d.pop(at: 1)
d.contains(value: 100)
d.contains(value: 1000)
d.insert(at: 0, value: 1337)
d.get(at: 0)
d.remove(value: 100)

//: [Next](@next)
