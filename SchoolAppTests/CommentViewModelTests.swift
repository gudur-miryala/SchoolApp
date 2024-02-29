//
//  CommentViewModelTests.swift
//  SchoolAppTests
//
//  Created by Priyanka Miryala on 2/28/24.
//

import XCTest
@testable import SchoolApp

final class CommentViewModelTests: XCTestCase {

    func testComments() {
        let sut = CommentViewModel(commentViewService: MockCommentViewService())
        sut.fetchComments()
        //XCTAssert(sut.comments.count == 500)
    }
}

