//
//  ContentView.swift
//  GithubOAuth-Firebase
//
//  Created by Da Hae Lee on 2023/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isLogin: Bool = false
    
    var body: some View {
        VStack {
            Button {
                /* 로그인 버튼 */
                print("로그인 버튼 클릭")
            } label: {
                Text("Github OAuth Login with Firebase")
            }
            .padding()

            Text("로그인이 되었나요?")
                .font(.largeTitle)
                .bold()
                .padding()
            Text(isLogin ? "로그인 완료!" : "아직...")
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(isLogin ? Color.blue : Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
