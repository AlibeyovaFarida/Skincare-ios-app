//
//  LoginService.swift
//  Skincare-app
//
//  Created by Apple on 24.09.24.
//

import Foundation
import Alamofire

class RegisterService{
    static let shared = RegisterService()
    
    private init() {}
    let headers: HTTPHeaders = [
        "Content-Type": "application/json"
    ]
    func register(request: RegisterModel.Request, completion: @escaping (Result<Void, Error>) -> Void) {
        NetworkManager.shared.fetchWithoutResponse(
            url: "http://localhost:8080/api/user/auth/register",
            method: .post,
            parameters: try? request.asParamaters(),
            headers: headers
        ) { result in
            completion(result)
        }
    }
    
}
