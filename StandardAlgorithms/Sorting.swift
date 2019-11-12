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
      } else {
          for i in 0..<(array.count / 2) {
            left.append(array[i])
          }
          for i in (array.count / 2)...(array.count-1) {
            right.append(array[i])
          }
        let newData = merge(array1: mergeSort(array: left), array2: mergeSort(array: right))
        return newData
        }
    
    }



    func merge(array1: [Int], array2 : [Int]) -> [Int] {
      var numberMerged = false
      var array2 = array2
      for i in 0..<array1.count {
        numberMerged = false
        for j in 0..<array2.count {
          if numberMerged == false {
            if array1[i] <  array2[j] {
              array2.insert(array1[i], at: j)
              numberMerged = true
            }
            else if array1[i] > array2[array2.count-1]{
              array2.append(array1[i])
              numberMerged = true
            }
          }
        }
      }
      return array2
    
    }
    
    func quickSort(array: [Int]) -> [Int]{
      if  array.count <= 1 {
        return array
      } else {
          let pivot = array[0]
          var left = [Int]()
          var right = [Int]()
          for i in 1..<array.count{
            if pivot > array[i]{
              left.append(array[i])
            }
            else {
                right.append(array[i])
            }
              
          }
          var newData = [Int]()
          newData.append(contentsOf: quickSort(array: left))
          newData.append(pivot)
          newData.append(contentsOf: quickSort(array: right))

          return newData
       }
    }
    
   

    
    func insertionSort(array: [Int]) ->[Int]{
      var numberSorted = false
      var sortedArray = [Int]()
      sortedArray.append(array[0])

      for i in 1..<array.count {
        numberSorted = false
        for j in stride(from: (sortedArray.count-1), to: -1, by: -1) {

            if numberSorted == false {
              if array[i] > sortedArray[j] {
                sortedArray.insert(array[i], at: j+1)
                numberSorted = true
              }
          
            }
        }
        if numberSorted == false {
            sortedArray.insert(array[i], at: 0)
            numberSorted = true

        }
        
                
      }

            
      return sortedArray
            
    }
    
    

    
}
