//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Rex, Aaron (SPH) on 07/11/2019.
//  Copyright © 2019 Rex, Aaron (SPH). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(array: [Int]) -> [Int]{
        var sorted = false
        var bubble = 0
        var data = array
      
        for i in 0..<(data.count) {
            for j in 0..<(data.count-i-1) {
                if data[j] > data[j+1] {
                    bubble = data[j]
                    data[j] = data[j+1]
                    data[j+1] = bubble
                
        
              
                }
            }
        }
      
      return data
    }
    
    func mergeSort(array: [Int]) -> [Int]{
      var left = [Int]()
      var right = [Int]()
      if array.count == 1 {
        return array
      }
      else {
        for i in 0..<(array.count / 2) {
          left.append(array[i])
        }
        for i in (array.count / 2)...(array.count-1) {
          right.append(array[i])
        }
      }

      print(left)
      print(right)
      
      mergeSort(array: left)
      mergeSort(array: right)
      

      return []
        
    }


    func merge(array1: [Int],array2 : [Int]) -> [Int]{
      var array1 = array1
      var array2 = array2
      for i in 0..<array1.count {
        for j in 0..<array2.count {
          if array1[i] < array2[j] {
            array2.insert(array1[i], at: j-1)
          }
          else {
            array2.insert(array1[i], at: array1.count)
          }
        }
      }
      return array2
    }

    
    
    
    
}
