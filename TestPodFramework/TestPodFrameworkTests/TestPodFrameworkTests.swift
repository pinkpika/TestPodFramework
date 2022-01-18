//
//  TestPodFrameworkTests.swift
//  TestPodFrameworkTests
//
//  Created by cm0630 on 2022/1/16.
//

import XCTest
@testable import TestPodFramework

class TestPodFrameworkTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let cake = Cake()
        cake.name = "123"
        XCTAssertEqual(cake.name, "123")
    }
}
