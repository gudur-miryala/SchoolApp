//
//  MockCommentViewService.swift
//  SchoolApp
//
//  Created by Priyanka Miryala on 2/28/24.
//

import Foundation
@testable import SchoolApp

class MockCommentViewService: CommentViewServiceDelegate {
    func getComments(completion: @escaping (Result<[CommentModel]?, DemoError>) -> Void) {
        guard let jsonData = readLocalJsonFile() else {
            completion(.failure(.NoData))
            return
        }
        do {
            let obj = try JSONDecoder().decode([CommentModel].self, from: jsonData)
            completion(.success(obj))
            print(obj)
        } catch let error {
            print(error)
            completion(.failure(.DecodingError))
        }
    }
    
    
    private func readLocalJsonFile() -> Data? {
        do {
            guard let fileUrl = Bundle.main.url(forResource: "Comments", withExtension: "json") else {
                return nil
            }
            let data = try Data(contentsOf: fileUrl)
            return data
        } catch let error {
            print(error.localizedDescription)
            return nil
        }
    }
    
}

