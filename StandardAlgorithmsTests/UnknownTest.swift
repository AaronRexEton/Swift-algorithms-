//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Rex, Aaron (SPH) on 14/11/2019.
//  Copyright © 2019 Rex, Aaron (SPH). All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {
    
    func testForSumOfFirstAndLastItemsOfArray() {
        //arrange
        let unknown = Unknown()
        let testCases = [(input: [10, 3, 2,7, 1], expected: 11), (input: [456, 300, 3, 1, 5, 4], expected: 460), (input: [3, 7, 19, 51, 99, 432, 8888], expected: 8891), (input: [], expected: 0), (input: [21], expected: 42)]
        
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.sumFirstLast(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
            
        }
        
    }
    
    func testForModeInSortedIntegerArrays() {
        //arrange
        let unknown = Unknown()
        let testCases = [(input: [10, 2, 2,7, 1], expected: 2), (input: [456, 4, 4, 5, 5, 4], expected: 4), (input: [3], expected: 3), (input: [9, 4, 1, 5, 9], expected: 9), (input: [], expected: 0)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.mode(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testForSecondLowestValueInMultipleIntegerArrays() {
        let unknown = Unknown()
        let testCases = [(input: [10, 2, 2,7, 1], expected: 2), (input: [456, 4, 5, 5, 3], expected: 4), (input: [1], expected: 0), (input: [1, 3, 1, 5, 9], expected: 3), (input: [], expected: 0)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.secondLowestValue(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
    }
    
    func testForDomainNameReturnForMultipleStringArrays() {
        let unknown = Unknown()
        let testCases = [(input: "www.google.com", expected: "google"), (input: "mail.support.google.com", expected: "google"), ]
        
    }
    
  
}
