//
//  25.1-ImplementDynamicArray.swift
//  BCTCI
//
//  Created by José Carlos García on 08/03/25.
//

import Foundation

public final class DynamicArray {
    var capacity: Int
    var size: Int
    var fixedArray: Array<Int>
    
    public init() {
        self.capacity = 10
        self.size = 0
        self.fixedArray = Array(repeating: 0, count: self.capacity)
    }
    
    public func get(at index: Int) -> Int {
        guard index >= 0 || index >= size else {
            fatalError("Index out of bounds")
        }
        return fixedArray[index]
    }
    
    public func set(at index: Int, value: Int) {
        guard index >= 0 || index >= size else {
            fatalError("Index out of bounds")
        }
        fixedArray[index] = value
    }
    
    public func sizeOf() -> Int {
        size
    }
    
    public func append(_ value: Int) {
        if size == capacity {
            resize(newCapacity: capacity * 2)
        }
        fixedArray[size] = value
        size += 1
    }
    
    public func popBack() {
        guard size > 0 else {
            fatalError("Pop from empty array")
        }
        size -= 1
        let doubleSize = Double(size)
        let doubleCapacity = Double(capacity)
        if doubleSize / doubleCapacity < 0.25 && capacity > 10 {
            resize(newCapacity: capacity / 2)
        }
    }
    
    public func resize(newCapacity: Int) {
        var newFixedSizeArray = Array(repeating: 0, count: newCapacity)
        for i in 0..<size {
            newFixedSizeArray[i] = fixedArray[i]
        }
        fixedArray = newFixedSizeArray
        capacity = newCapacity
    }
}
