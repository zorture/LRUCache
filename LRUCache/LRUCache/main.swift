//
//  main.swift
//  LRUCache
//
//  Created by Kanwar Zorawar Singh Rana on 9/23/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

let lruCache = LRUCaching<Int, Int>(withCapacity: 5)

let node1 = CacheNode<Int, Int>(withKey: 1, andValue: 1)
lruCache.add(intoCache: node1)
let node2 = CacheNode<Int, Int>(withKey: 2, andValue: 2)
lruCache.add(intoCache: node2)
let node3 = CacheNode<Int, Int>(withKey: 3, andValue: 3)
lruCache.add(intoCache: node3)
let node4 = CacheNode<Int, Int>(withKey: 4, andValue: 4)
lruCache.add(intoCache: node4)
let node5 = CacheNode<Int, Int>(withKey: 5, andValue: 5)
lruCache.add(intoCache: node5)
let node6 = CacheNode<Int, Int>(withKey: 6, andValue: 6)
lruCache.add(intoCache: node6)
let node7 = CacheNode<Int, Int>(withKey: 3, andValue: 3)
lruCache.add(intoCache: node7)

print(lruCache)
