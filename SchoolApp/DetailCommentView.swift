//
//  DetailCommentView.swift
//  SchoolApp
//
//  Created by Priyanka Miryala on 2/28/24.
//

import SwiftUI

struct DetailCommentView: View {
    var commentModel: CommentModel
    var body: some View {
        VStack {
            Text(commentModel.overview_paragraph ?? "NA")
                .font(.title).font(.system(size: 8))
            
        }
    }
}

#Preview {
    DetailCommentView(commentModel: CommentModel(dbn: "02m", school_name: "School123",overview_paragraph: "Students who are prepared for college must have an education that encourages them to take risks as they produce and perform."))
}


