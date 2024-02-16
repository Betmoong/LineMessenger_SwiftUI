//
//  LoginIntroView.swift
//  LineMessenger
//
//  Created by Rocky on 2/16/24.
//

import SwiftUI

struct LoginIntroView: View {
    @State private var isPresentedLoginView: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                
                Text("환영합니다.")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundStyle(.bkText)
                
                Text("무료 메시지와 영상통화, 음성통화를 부담없이 즐겨보세요!")
                    .font(.system(size: 12))
                    .foregroundStyle(.greyDeep)
                
                Spacer()
                
                Button {
                    isPresentedLoginView.toggle()
                } label: {
                    Text("로그인")
                        .font(.system(size: 14))
                        .foregroundStyle(.lineApp)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                }
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.lineApp, lineWidth: 0.8)
                }
                .padding(.horizontal, 15)
            }
            .navigationDestination(isPresented: $isPresentedLoginView) {
                LoginView()
            }
        }
    }
}

#Preview {
    LoginIntroView()
}
