//
//  ContentView.swift
//  forNetworkTest
//
//  Created by 황민채 on 11/19/23.
//

import SwiftUI

struct ExDiary: Decodable {
    let exDiaryId: Int
    let createdDate: String
    let modifiedDate: String
    let startDate: String
    let finishDate: String
    let exDiaryName: String
    let createMemberName: String
    
    enum CodingKeys: String, CodingKey {
        case exDiaryId, createdDate, modifiedDate, startDate, finishDate, exDiaryName, createMemberName
    }
}

struct ContentView: View {
    @State var username: [String] = []
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button {
                requestData()
                print(username)
            } label : {
                Text("엣큥")
            }
        }
        .padding()
    }
    
    
    
    private func requestData() {
        NetworkManager.shared.requestsomething { exdiary, error in
            
            guard let exdiary = exdiary else {
                print("error")
                return
            }
            username.append(exdiary.createMemberName )
        }
    }
    
}

#Preview {
    ContentView()
}
