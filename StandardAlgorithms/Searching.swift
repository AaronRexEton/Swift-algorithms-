//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Aaron Rex on 09/11/2019.
//  Copyright © 2019 Rex, Aaron (SPH). All rights reserved.
//

import Foundation

class Searching {
    
    func linearSearch(array: [Int], numberToFind: Int) -> Bool {

        var itemFound = false
        var currentNumber = 0

        for i in 0..<array.count {
          if itemFound == false {
            currentNumber = array[i]
            if currentNumber == numberToFind {
              itemFound = true
            }
          }
        }

        if itemFound == true {
          return true
        } else {
          return false
        }
    
    }
    
    func binarySearch(array:[Int], numberToFind: Int) -> Bool {
      var midpoint = array.count / 2
      var lowerBound = 0
      var upperBound = array.count - 1
      var itemFound = false
      
      while itemFound == false && lowerBound <= upperBound {
        print(midpoint, upperBound, lowerBound, array[midpoint])

        if numberToFind < array[midpoint] {
            upperBound = midpoint - 1
        }
        
        else if numberToFind > array[midpoint] {
            lowerBound = midpoint + 1
            
        } else {
          itemFound = true
        }
        
        midpoint = ((upperBound + lowerBound) / 2)
      }
      
    return itemFound
          
    }

    
    
}
