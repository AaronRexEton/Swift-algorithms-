//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Rex, Aaron (SPH) on 07/11/2019.
//  Copyright © 2019 Rex, Aaron (SPH). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedIntegers() {
        //arrange
        let sorting = Sorting()
        let data = [5, 4, 1 , 3]
        
        //act
        let actual = sorting.bubbleSort(array: data)
        //assert
        XCTAssertEqual(actual, [1, 3, 4, 5])
    }
    
    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2,7, 1], expected: [1, 2, 3, 7, 10]), (input: [456, 300, 3, 1, 5, 4], expected: [1, 3, 4, 5, 300, 456])]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testMergeSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2,7, 1], expected: [1, 2, 3, 7, 10]), (input: [456, 300, 3, 1, 5, 4], expected: [1, 3, 4, 5, 300, 456])]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    func testMergeFunctionWithTwoIntegerArraysReturnsMergedArray() {
        let sorting = Sorting()
        let testCases = [(input1: [10, 2, 7], input2: [5, 6, 3], expected: [2, 3, 5, 6, 7, 10]), (input1: [3, 54, 32], input: [16, 5, 9], expected: [3, 5, 9, 16, 32, 54])] as [Any]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.merge(array1: testCase.input1, array2: testCase.input2)
            XCTAssertEqual(actual, testCase.expected)
        }
    
        
        
    }
    func testBubbleSortPerformance() {
        let data = [456, 300, 3, 1, 5, 4]
        let sorting = Sorting()
        
        measure {
            sorting.bubbleSort(array: data)
        }
    }

}
d
