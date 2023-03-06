//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Jacob Fredriksson on 2023-03-06.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetRowView().padding()                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
