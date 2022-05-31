//
//  LoginView.swift
//  alamofire-login-app
//
//  Created by KimJongHee on 2022/05/31.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .edgesIgnoringSafeArea(.all)
                Spacer()
                VStack {
                    Image(systemName: "house.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 150))
                        .padding()
                Spacer()
                    VStack {
                        NavigationLink(destination: {
                            LogInView()
                        }, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 400, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .overlay(Text("로그인 하러 가기"))
                                .foregroundColor(.green)
                        })
                        NavigationLink(destination: {
                            Text("회원가입 화면")
                        }, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 400, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .overlay(Text("회원가입 하러 가기"))
                                .foregroundColor(.green)
                        })
                    }
                    .padding(.bottom, 20)
                    VStack {
                        NavigationLink(destination: {
                            Text("프로필 화면")
                        }, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 400, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .overlay(Text("내 프로필"))
                                .foregroundColor(.green)
                        })
                        NavigationLink(destination: {
                            Text("사용자 목록 검색 화면")
                        }, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 400, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .overlay(Text("사용자 목록 검색"))
                                .foregroundColor(.green)
                        })
                    }
                Spacer()
                }
            }
            .navigationTitle("홈")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


