//
//  CommentViewModel.swift
//  SchoolApp
//
//  Created by Priyanka Miryala on 2/28/24.
//

import Foundation

class CommentViewModel: ObservableObject {
    
    private let commentViewService: CommentViewServiceDelegate
    
    init(commentViewService: CommentViewServiceDelegate = CommentViewService()) {
        self.commentViewService = commentViewService
    }
    
    @Published var comments = [CommentModel]()
    
    func fetchComments() {
        commentViewService.getComments { result in
            switch result {
            case.success(let comments):
                self.comments = comments!
                
            case .failure (let error):
                print(error)
            }
        }
    }
}
