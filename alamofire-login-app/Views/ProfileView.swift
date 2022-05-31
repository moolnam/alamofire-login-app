//
//  ProfileView.swift
//  alamofire-login-app
//
//  Created by KimJongHee on 2022/05/31.
//

import SwiftUI

struct ProfileView: View {
    
    @State var userData: UserData? = nil
    
    var body: some View {
        VStack {
            if userData != nil {
                AsyncImage(url: URL(string: userData?.avatar)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(width: 200, height: 200, alignment: .center)
                    case .success(let image):
                        image
                            .foregroundColor(.white)
                            .font(.system(size: 200))
                            .background(Color.green)
                            .cornerRadius(20)
                    case .failure:
                        ProgressView()
                            .frame(width: 200, height: 200, alignment: .center)
                    default:
                        EmptyView()
                            .frame(width: 200, height: 200, alignment: .center)
                    }
                }
            } else {
                Image(systemName: "person.fill.questionmark")
                //                    .resizable()
                //                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .font(.system(size: 200))
                    .background(Color.green)
                    .cornerRadius(20)
            }
            Form {
                Section("프로필", content: {
                    Text("아이디:")
                    Text("이름:")
                    Text("이메일:")
                })
                Section(content: {
                    Button(action: {
                        print("새로고침 클릭")
                    }, label: {
                        Text("새로고침")
                    })
                })
            }
        }
        .navigationTitle("내 프로필")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
