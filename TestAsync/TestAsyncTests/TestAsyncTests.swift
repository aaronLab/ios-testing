//
//  TestAsyncTests.swift
//  TestAsyncTests
//
//  Created by Aaron Lee on 2021/09/20.
//

import XCTest
@testable import TestAsync

class TestAsyncTests: XCTestCase {

    func test_GetAllPosts() {
        
        let expectation = XCTestExpectation(description: "Posts hasn't been downloaded.")
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        
        var posts = [Post]()
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data,
                  error == nil else {
                XCTFail()
                return
            }
            
            guard let fetchedPosts = try? JSONDecoder().decode([Post].self, from: data) else {
                XCTFail()
                return
            }
            
            posts = fetchedPosts
            expectation.fulfill()
        }.resume()
        
        wait(for: [expectation], timeout: 2.0)
        
        XCTAssertTrue(posts.count > 0)
        
    }

}
