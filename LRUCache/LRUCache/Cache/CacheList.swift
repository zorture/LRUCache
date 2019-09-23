//
//  CacheList.swift
//  LRUCache
//
//  Created by Kanwar Zorawar Singh Rana on 9/23/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Cocoa

typealias RemoveNodeHandler<K> = (_ key: K) -> Void

class CacheList <K,V> {
    
    // Head of the list
    var headNode: CacheNode<K, V>?
    // Tail of the list
    var tailNode: CacheNode<K, V>?
    
    // Capacity
    private var capacity = 0
    private var nodeCount = 0
    // remove node callback
    var removeHandler: RemoveNodeHandler<K>?
    
    init(withCapacity capacity: Int) {
        self.capacity = capacity

    }
    
    func insert(newNode node: CacheNode<K, V>) {
        if nodeCount < capacity {
            nodeCount += 1
        } else {
            if let key = removeNode() {
                removeHandler?(key)
            }
        }
        guard headNode != nil else {
            self.headNode = node
            return
        }
        guard let currentNode = fetchLastNode() else { return }
        currentNode.next = node
        node.previous = currentNode
        tailNode = node
    }
    
    func fetchLastNode() -> CacheNode<K, V>? {
        var currentNode:CacheNode<K, V>?
        currentNode = headNode
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        return currentNode
    }
    
    func removeNode() -> K?{
        let currentLast = tailNode
        let newlastNode = tailNode?.previous
        newlastNode?.next = nil
        tailNode = newlastNode
        return currentLast?.key
    }
}
