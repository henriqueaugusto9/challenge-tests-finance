//
//  UserProfileTests.swift
//  FinanceAppTests
//
//  Created by Henrique Augusto on 18/04/22.
//

import Foundation
import XCTest

@testable import FinanceApp

class UserProfileTests: XCTestCase {
    
    var profileSuccessStub = NetworkClientProfileSuccessStub()
    var sut: FinanceService?
    
    func test_shoudReturn_ProfileData() {
        // given
        sut = FinanceService(networkClient: self.profileSuccessStub)
        
        // when
        sut?.fetchUserProfile { userProfile in
            XCTAssertEqual(userProfile?.name, "Irma Flores")
            XCTAssertEqual(userProfile?.phone, "+55 (11) 99999-9999")
            XCTAssertEqual(userProfile?.email, "irma@devpass.com.br")
            XCTAssertEqual(userProfile?.address, "Rua Bela Cintra, 495")
        }
    }
    
    func test_shoulReturn_FailureWhenRequest_ProfileData() {
        
    }
}
