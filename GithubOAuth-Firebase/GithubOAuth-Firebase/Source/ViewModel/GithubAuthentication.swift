//
//  GithubAuthentication.swift
//  GithubOAuth-Firebase
//
//  Created by Da Hae Lee on 2023/01/23.
//

import Foundation
import FirebaseAuth

class GithubAuthentication: ObservableObject {
    var provider = OAuthProvider(providerID: "github.com")

    
    func githubPermissionPreconfigure() {
        provider.customParameters = [ // ② - (1)
            "allow_signup": "false"
        ]
        // 사용자의 이메일 주소에 접근하기 위한 요청입니다.
        // 이 부분은 앱의 API 권한에서 사전에 설정되어야만 합니다.
        provider.scopes = ["user:email"]  // ② - (2)
    }
}
