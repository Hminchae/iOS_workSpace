//
//  simpleView.swift
//  nakaliWarmUp
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct simpleView: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable() // modifier 순서는 중요함
                .scaledToFit() //이미지 비율은 깨지 말아줘 .. ~ 라는 바람
                .frame(width: 200, height: 200)
            Text("헤드라인 입니다.")
                .font(.headline)
                .padding()
            Text("서브헤드라인 입니다.")
                .font(.subheadline)
                .padding()
            Text("바디입니다.")
                .font(.body)
                .padding()
            Button {
                
            }label: {
                Text("Click Me")
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .foregroundStyle(.white)
            .bold()
        }.padding()
    }
}

#Preview {
    simpleView()
}
