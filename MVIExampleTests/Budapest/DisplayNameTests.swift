//
//  DisplayNameTests.swift
//  MVIExampleTests
//
//  Created by Rugmangathan on 02/01/18.
//  Copyright © 2018 Rugmangathan. All rights reserved.
//

import XCTest
@testable import MVIExample

class DisplayNameTests: XCTestCase {
  func testShouldRemoveWhitespaces_whenNameHasOnlyWhitespaces() {
    // Setup
    let actual = "  "

    // Assert
    let expected = ""
    XCTAssertEqual(BudapestModel().toDisplayName(actual), expected)
  }

  func testShouldRemoveLeadingSpaces_whenNameHasLeadingWhitespaces() {
    // Setup
    let actual = "   Rugmangathan"

    // Assert
    let expected = "Rugmangathan"
    XCTAssertEqual(BudapestModel().toDisplayName(actual), expected)
  }

  func testShouldRemoveTrailingWhiteSpaces_whenNameHasTrailingWhitespaces() {
    // Setup
    let actual = "Rugmangathan   "

    // Assert
    let expected = "Rugmangathan"
    XCTAssertEqual(BudapestModel().toDisplayName(actual), expected)
  }

  func testShouldRemoveExtraWhitespacesInBetweenName_whenNameHasMoreThanOneWhiteSpacesInBetween() {
    // Setup
    let actual = "Rugmangathan   M K"

    // Assert
    let expected = "Rugmangathan M K"
    XCTAssertEqual(BudapestModel().toDisplayName(actual), expected)
  }
}
