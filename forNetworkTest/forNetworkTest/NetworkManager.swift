//
//  NetworkManager.swift
//  forNetworkTest
//
//  Created by 황민채 on 11/20/23.
//

import Foundation


class NetworkManager {
    static let shared = NetworkManager()
    
    private init() { }
    
    func requestsomething(completed: @escaping (ExDiary?, String?) -> ()) {
        var request = URLRequest(url: URL(string: "http://220.74.97.228:8081/api/ex_diary/1")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let _ = error {
                completed(nil, "we got some error. check the network")
            } // task 에 urlsession을 받고 핸들러에 저 세개를 가져옴 //에러 검증 1
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response")
                return //에러 검증 2
            }
            
            guard let data = data else {
                completed(nil, "The data recived is wrong")
                return //에러 검증 3
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode(ExDiary.self, from: data)
                
                completed(decodedResponse, nil) // 여기에 태워보냄
                
            } catch {
                print(error)
            }
        }
    }
}
