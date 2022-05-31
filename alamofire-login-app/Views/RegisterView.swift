//
//  RegisterView.swift
//  alamofire-login-app
//
//  Created by KimJongHee on 2022/05/31.
//

import SwiftUI

struct RegisterView: View {
    
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""
    @State var checkInputPassword: String = ""
    
    var body: some View {
        VStack {
            Form {
                Section("로그인", content: {
                    TextField("이메일 입력", text: $inputEmail)
                        .keyboardType(.emailAddress)
                    SecureField("비밀번호 입력", text: $inputPassword)
                    SecureField("비밀번호 확인", text: $checkInputPassword)
                })
                 
                Section {
                    Button(action: {
                        print("회원가입 버튼 클릭")
                    }, label: {
                        Text("회원가입 하기")
                    })
                }
            }
        }
        .navigationTitle("회원가입")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
