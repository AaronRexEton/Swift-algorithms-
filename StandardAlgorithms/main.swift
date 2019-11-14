//
//  main.swift
//  StandardAlgorithms
//
//  Created by Rex, Aaron (SPH) on 05/11/2019.
//  Copyright © 2019 Rex, Aaron (SPH). All rights reserved.
//
/* let sorting = Sorting()
let searching = Searching()
let data = [207, 758, 871, 960, 644, 182, 812, 313, 477, 381, 288, 906, 865, 160, 142, 993, 13, 252, 101, 696, 481, 444, 187, 207, 629, 274, 61, 154, 260, 838, 484, 245, 813, 269, 800, 579, 703, 803, 521, 815, 163, 911, 666, 612, 585, 784, 364, 472, 899, 591]

print("Which algorithm would you like to know about? \n Linear Search \n Binary Search \n Bubble Sort \n Insertion Sort \n Quick Sort \n Merge Sort ")

if let input = readLine() {
    
    if input == "Linear Search" {
        print("This algorithm sequentially looks through each and every value in the array until it finds the specified values. Worst case is O(n)")
        print(data, "Searching for \(800)")
        print(searching.linearSearch(array: data, numberToFind: 800))
        
    }
    else if input == "Binary Search" {
        print("This algorithm takes the middle value, comparies it to the specified value whether it is greater less than or equal to. Based on this it splits the array in half, again taking the middle value. This repeats until the specified value is found. This algorithm only works on a sorted array \n time complexity will be O(1) in the best case and log(n) in average and worst cases")
        print(data, "Searching for \(800)")
        print(searching.binarySearch(array: data, numberToFind: 800))
        
    }
    else if input == "Bubble Sort" {
        print("This algorithm compares each value in the array to the adjacent values. Based on this it makes the necessary swaps of position until the array is sorted. \n time complexity of bubble sort is  O(n^^2) for the worst and average cases and O(n) in the best case")
        print(data)
        print(sorting.bubbleSort(array: data))
        
    }
    else if input == "Insertion Sort" {
        print("This algorithm builds up final sorted array one at a time. The array elements are compared to one another and then arranged simultaneously in a particular order \n time complexity of insertion sort is O(n^^2) for the worst and average cases but O(n) in the best case")
        print(data)
        print(sorting.insertionSort(array: data))
        
    }
    else if input == "Quick Sort" {
        print("This is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. \n The worst case time complexity of this algorithm is O(n^^2) but as this is a randomized algorithm, its time complexity fluctuates between O(n^^2) and O(nLogn) mostly it comes out to be O(nLogn)")
        print(data)
        print(sorting.quickSort(array: data))
        

    }
    else if input == "Merge Sort" {
        print("Merge sort is a divide-and-conquer algorithm based on the idea of breaking down a list into several sub-lists until each sublist consists of a single element and merging those sublists in a manner that results into a sorted list \n Complexity ranges from O(NlogN) in worst case to O(logN)")
        print(data)
        print(sorting.mergeSort(array: data))
    }
    else {
        print("Invalid input")
    }

 }
*/
