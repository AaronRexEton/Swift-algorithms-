//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Rex, Aaron (SPH) on 14/11/2019.
//  Copyright © 2019 Rex, Aaron (SPH). All rights reserved.
//

import Foundation

class Unknown {
    
    func sumFirstLast(array: [Int]) -> Int{
        if array.count > 1 {
            return (array[0] + array[(array.count-1)])
        }
        else if array.count == 1 {
            return (array[0] * 2)
        }
        else {
            return 0
        }
    }
    
    func mode(array: [Int]) -> Int{
        var newCount = 0
        var oldCount = 0
        if array.count > 0 {
            var mode = array[0]
        
        
            for i in 0..<array.count {
                
                if newCount > oldCount {
                    oldCount = newCount
                    mode = array[i-1]
                }
                print(array[i])
                newCount = 0
                let temp = array[i]
                for j in 0..<array.count {
                    if temp == array[j] {
                        newCount += 1
                    }
                    
                }
            }
        return mode
        }
        
        return 0
    }
    
    func secondLowestValue(array: [Int]) -> Int{
        if array.count > 0 {
            var lowest = array[0]
            for i in 0..<array.count {
                if array[i] < lowest {
                    lowest = array[i]
                }
            }
            
            return lowest
        
            
        }
        return 0
    }
  
    
}



