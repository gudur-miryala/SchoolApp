//
//  CommentsView.swift
//  SchoolApp
//
//  Created by Priyanka Miryala on 2/28/24.
//

import SwiftUI


struct CommentsView: View {

    @ObservedObject private var viewModel = CommentViewModel()

     @State private var searchText: String = ""
     var body: some View {
     NavigationView {
     VStack {
     List {
     ForEach(viewModel.comments) { comment in
     NavigationLink {
        DetailCommentView(commentModel: comment)
     } label: {
      CommentRow(commentModel: comment)
     }
     }
     }
     }.onAppear {
     viewModel.fetchComments()
     }
     .navigationTitle("SchoolApp")
     }
     
     }
     }
     
#Preview {
    CommentsView()
}
     
    
