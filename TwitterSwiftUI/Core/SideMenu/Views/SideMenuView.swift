//
//  SideMenuView.swift
//  TwitterSwiftUI
//
//  Created by Jacob Fredriksson on 2023-03-08.
//

import SwiftUI

struct SideMenuView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
 
        if let user = authViewModel.currentUser {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading) {
                    Circle()
                        .frame(width: 48, height: 48)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(user.fullname)
                            .font(.headline)
                        
                        Text("@\(user.username)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    UserStatsView()
                        .padding(.vertical)
                    

                }
                .padding(.leading)
                
                ForEach(SideMenuViewModel.allCases, id: \.rawValue) {
                    viewModel in
                    if viewModel == .profile {
                        NavigationLink {
                            ProfileView()
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else if viewModel == .logout {
                        Button {
                            authViewModel.signOut()
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                   
                    } else {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }

                }
             
                
                Spacer()
            }
        } else {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading) {
                    Circle()
                        .frame(width: 48, height: 48)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Test user")
                            .font(.headline)
                        
                        Text("@test username")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    UserStatsView()
                        .padding(.vertical)
                    

                }
                .padding(.leading)
                
                ForEach(SideMenuViewModel.allCases, id: \.rawValue) {
                    viewModel in
                    if viewModel == .profile {
                        NavigationLink {
                            ProfileView()
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else if viewModel == .logout {
                        Button {
                            authViewModel.signOut()
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                   
                    } else {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }

                }
             
                
                Spacer()
            }
        }

    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}


