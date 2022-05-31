//
//  LogInView.swift
//  alamofire-login-app
//
//  Created by KimJongHee on 2022/05/31.
//

import SwiftUI

struct LogInView: View {
    
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""
    
    var body: some View {
        VStack {
            Form {
                Section("로그인", content: {
                    TextField("이메일 입력", text: $inputEmail)
                        .keyboardType(.emailAddress)
                    SecureField("비밀번호 입력", text: $inputPassword)
                })
                 
                Section {
                    Button(action: {
                        print("로그인 버튼 클릭")
                    }, label: {
                        Text("로그인 하기")
                    })
                }
            }
        }
        .navigationTitle("로그인")
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
