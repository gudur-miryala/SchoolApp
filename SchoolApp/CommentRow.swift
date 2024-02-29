//
//  CommentRow.swift
//  SchoolApp
//
//  Created by Priyanka Miryala on 2/28/24.
//

import SwiftUI

struct CommentRow: View {
    var commentModel: CommentModel
    var body: some View {
        VStack {
            Text(commentModel.dbn ?? "NA")
                .font(.title).font(.system(size: 8))
            Text(commentModel.school_name ?? "NA")
                .font(.title2).font(.system(size: 6))
        }
    }
}

#Preview {
    CommentRow(commentModel: CommentModel(dbn: "20m", school_name:"ABC School",overview_paragraph: "Students who are prepared for college must have an education that encourages them to take risks as they produce and perform." ))
}




