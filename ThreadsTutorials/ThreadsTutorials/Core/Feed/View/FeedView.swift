//
//  FeedView.swift
//  ThreadsTutorials
//
//  Created by 이지현 on 2023/08/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        // feed에서는 프로필이나 글 클릭으로 이동해야 하므로 NavigationStack 필요
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach (0 ... 10, id: \.self){ thread in
                        FeedCell()
                    }
                }
            }
            .refreshable {
                print("DUBUG: Refresh threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(.black)
                }

            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FeedView()
        }
    }
}
