//
//  25.2-ExtraDynamicArrayOperations.swift
//  BCTCI
//
//  Created by José Carlos García on 10/03/25.
//

extension DynamicArray {
    
    @discardableResult
    public func pop(at index: Int) -> Int {
        guard index >= 0 || index < size else {
            fatalError("Index out of bounds")
        }
        let savedElement = fixedArray[index]
        
        for i in 0..<size - 1 {
            fixedArray[i] = fixedArray[i + 1]
        }
        
        popBack()
        return savedElement
    }
    
    public func contains(value: Int) -> Bool {
        for element in fixedArray {
            if element == value {
                return true
            }
        }
        return false
    }
    
    public func insert(at index: Int, value: Int) {
        guard index >= 0, index <= size else {
            fatalError("Index out of bounds")
        }

        if size == capacity {
            resize(newCapacity: capacity * 2)
        }

        for j in stride(from: size - 1, through: index, by: -1) {
            fixedArray[j + 1] = fixedArray[j]
        }

        fixedArray[index] = value
        size += 1
    }
    
    public func remove(value: Int) -> Int {
        for (index, element) in fixedArray.enumerated() {
            if element == value {
                pop(at: index)
                return index
            }
        }
        return -1
    }
}
