//
//  UserRowView.swift
//  TwitterSwiftUI
//
//  Created by Jacob Fredriksson on 2023-03-08.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Joker")
                    .font(.headline).bold()
                    .foregroundColor(.black)
                
                Text("Heath Ledger").font(.headline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
