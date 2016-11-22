//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Developer on 9/28/16.
//  Copyright © 2016 Hyungsuk. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    let referee = FizzBuzzReferee()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNum1IsNumber() {
        
        let result = referee.judgeResult(inputNumber: 1, inputFizzBuzz: FizzBuzz.Number)
        XCTAssertTrue(result)
    }
    
    func testNum1IsNotFizz() {
        
        let result = referee.judgeResult(inputNumber: 1, inputFizzBuzz: FizzBuzz.Fizz)
        XCTAssertFalse(result)
    }
    
    func testNum1IsNotBuzz() {
        
        let result = referee.judgeResult(inputNumber: 1, inputFizzBuzz: FizzBuzz.Buzz)
        XCTAssertFalse(result)
    }
    
    func testNum1IsNotFizzBuzz() {
        let result = referee.judgeResult(inputNumber: 1, inputFizzBuzz: FizzBuzz.FizzBuzz)
        XCTAssertFalse(result)
    }
    
    func testNum2IsNumber() {
        
        let result = referee.judgeResult(inputNumber: 2, inputFizzBuzz: FizzBuzz.Number)
        XCTAssertTrue(result)
    }
    
    func testNum2IsNotFizz() {
        
        let result = referee.judgeResult(inputNumber: 2, inputFizzBuzz: FizzBuzz.Fizz)
        XCTAssertFalse(result)
    }
    
    func testNum2IsBuzz() {
        
        let result = referee.judgeResult(inputNumber: 2, inputFizzBuzz: FizzBuzz.Buzz)
        XCTAssertFalse(result)
    }
    
    func testNum2IsNotFizzBuzz() {
                let result = referee.judgeResult(inputNumber: 2, inputFizzBuzz: FizzBuzz.FizzBuzz)
        XCTAssertFalse(result)
    }
    
    func testNum3IsNotNumber() {
        
        let result = referee.judgeResult(inputNumber: 3, inputFizzBuzz: FizzBuzz.Number)
        XCTAssertFalse(result)
    }
    
    func testNum3IsFizz() {
        
        let result = referee.judgeResult(inputNumber: 3, inputFizzBuzz: FizzBuzz.Fizz)
        XCTAssertTrue(result)
    }
    
    func testNum3IsNotBuzz() {
        
        let result = referee.judgeResult(inputNumber: 3, inputFizzBuzz: FizzBuzz.Buzz)
        XCTAssertFalse(result)
    }
    
    func testNum3IsNotFizzBuzz() {
        
        let result = referee.judgeResult(inputNumber: 3, inputFizzBuzz: FizzBuzz.FizzBuzz)
        XCTAssertFalse(result)
    }

    func testNum4IsNumber() {
        let result = referee.judgeResult(inputNumber: 4, inputFizzBuzz: FizzBuzz.Number)
        XCTAssertTrue(result)
    }
    
    func testNum4IsNotFizz() {
        let result = referee.judgeResult(inputNumber: 4, inputFizzBuzz: FizzBuzz.Fizz)
        XCTAssertFalse(result)
    }
    
    func testNum5IsBuzz() {
        let result = referee.judgeResult(inputNumber: 5, inputFizzBuzz: FizzBuzz.Buzz)
        XCTAssertTrue(result)
    }
    
    func testNum5IsNotNumber() {
        let result = referee.judgeResult(inputNumber: 5, inputFizzBuzz: FizzBuzz.Number)
        XCTAssertFalse(result)
    }
    
    func testNum15IsFizzBuzz() {
        let result = referee.judgeResult(inputNumber: 15, inputFizzBuzz: FizzBuzz.FizzBuzz)
        XCTAssertTrue(result)
    }
    
    func testNum37IsFizzBuzz() {
        let result = referee.judgeResult(inputNumber: 15, inputFizzBuzz: FizzBuzz.FizzBuzz)
        XCTAssertTrue(result)
    }
    
   
    
}
