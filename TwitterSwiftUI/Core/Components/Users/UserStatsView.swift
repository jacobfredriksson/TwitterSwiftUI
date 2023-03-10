//
//  UserStatsView.swift
//  TwitterSwiftUI
//
//  Created by Jacob Fredriksson on 2023-03-08.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            
            HStack(spacing: 4) {
                Text("807").bold().font(.subheadline)
                Text("Following").font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("6.9m").bold().font(.subheadline)
                Text("Followers").font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
