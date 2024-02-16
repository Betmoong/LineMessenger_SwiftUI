//
//  LoginView.swift
//  LineMessenger
//
//  Created by Rocky on 2/16/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("로그인")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(.bkText)
                    .padding(.top, 80)
                Text("아래 제공되는 서비스로 로그인을 해주세요.")
                    .font(.system(size: 14))
                    .foregroundStyle(.greyDeep)
            }
            .padding(.horizontal, 30)
            
            Spacer()
            
            Button {
                // TODO: - 구글 로그인
            } label: {
                Text("Google로 로그인")
            }.buttonStyle(LoginButtonStyle(textColor: .bkText, borderColor: .greyLight))
            
            Button {
                // TODO: - 애플 로그인
            } label: {
                Text("Apple로 로그인")
            }.buttonStyle(LoginButtonStyle(textColor: .bkText, borderColor: .greyLight))
        }
    }
}

#Preview {
    LoginView()
}
