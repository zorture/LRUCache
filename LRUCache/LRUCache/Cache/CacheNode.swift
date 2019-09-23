//
//  CacheNode.swift
//  LRUCache
//
//  Created by Kanwar Zorawar Singh Rana on 9/23/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Cocoa

class CacheNode <K,V> {
    let key: K!
    let value: V!
    private var previousNode: CacheNode?
    private var nextNode: CacheNode?
    
    var next: CacheNode? {
        get {
            return self.nextNode
        }
        set (newNext) {
            self.nextNode = newNext
        }
    }
    
    var previous: CacheNode? {
        get {
            return self.previousNode
        }
        set (newPrevious){
            self.previousNode = newPrevious
        }
    }
    
    init(withKey key: K, andValue value: V){
        self.key = key
        self.value = value
    }
    
}
