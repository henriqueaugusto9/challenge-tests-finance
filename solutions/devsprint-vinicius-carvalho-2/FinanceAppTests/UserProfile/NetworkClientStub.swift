//
//  NetworkClientStub.swift
//  FinanceAppTests
//
//  Created by Henrique Augusto on 18/04/22.
//

import Foundation
@testable import FinanceApp

struct NetworkClientProfileSuccessStub: NetworkClientProtocol {
    func performRequest(with url: URL, completion: @escaping (Data?) -> ()) {
        
        let mock = """
        {
            "name": "Irma Flores",
            "phone": "+55 (11) 99999-9999",
            "email": "irma@devpass.com.br",
            "address": "Rua Bela Cintra, 495",
            "account": {
                "agency": "0001",
                "account": "123456-7"
            }
        }
        """

        let data = mock.data(using: .utf8)!
        completion(data)
    }
}
