//
//  LRUCaching.swift
//  LRUCache
//
//  Created by Kanwar Zorawar Singh Rana on 9/23/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Cocoa

class LRUCaching <K: Hashable, V> {
    
    var hashMap = [K: CacheNode<K, V>]()
    let list: CacheList<K, V>!
    
    init(withCapacity capacity: Int) {
        list = CacheList.init(withCapacity: capacity)
        
        // Removing Nodes from Hash Map 
        list.removeHandler = { [weak self] key in
            self?.hashMap.removeValue(forKey: key)
        }
    }
    
    func add(intoCache data: CacheNode<K, V>) {
        hashMap[data.key] = data
        list.insert(newNode: data)
    }

}
