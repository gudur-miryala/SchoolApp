//
//  CommentModel.swift
//  SchoolApp
//
//  Created by Priyanka Miryala on 2/28/24.
//

import Foundation

struct CommentModel: Codable, Identifiable {
   let id = UUID()
    let dbn: String?
    let school_name: String?
    let overview_paragraph: String?

    enum CommentModel: String, CodingKey {
        case dbn
        case school_name
        case overview_paragraph
    }
}



