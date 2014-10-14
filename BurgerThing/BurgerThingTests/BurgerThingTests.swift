//
//  BurgerThingTests.swift
//  BurgerThingTests
//
//  Created by Timothy Rodney Nugent on 14/10/2014.
//  Copyright (c) 2014 Timothy Rodney Nugent. All rights reserved.
//

import UIKit
import XCTest

class BurgerThingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        BurgerHandler.sharedHandler.serverWorked = true
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
        //need to test 
    }
    
    func testOrderBurger()
    {
        BurgerHandler.sharedHandler.orderBurger(ingredients: ["Meat","Cheese","Relish"]) { (error) -> () in
            XCTAssertNil(error, "Burger was ordered successfully")
        }
    }
    func testOrderBurgerFailure()
    {
        BurgerHandler.sharedHandler.serverWorked = false
        BurgerHandler.sharedHandler.orderBurger(ingredients: ["Meat","Cheese","Relish"]) { (error) -> () in
            XCTAssertNotNil(error != nil, "Burger order failed:\(error?.localizedDescription)")
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
