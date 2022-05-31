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
                    Image(systemName: "bolt.car")
                        .foregroundColor(.white)
                        .font(.system(size: 150))
                        .padding()
                    Text("전기차 충전소 찾기")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
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
                            RegisterView()
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
                            ProfileView()
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
                        NavigationLink(destination: {
                            Text("충전소")
                        }, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 400, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .overlay(Text("충전소 검색"))
                                .foregroundColor(.green)
                        })
                        .padding()
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


