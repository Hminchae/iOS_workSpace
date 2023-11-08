//
//  Layout.swift
//  nakaliWarmUp
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            Text("Text Element1")
                .font(.headline)
                .padding()
            Text("Text Element1")
                .padding()
            Text("Text Element1")
                .padding()
            HStack{
                myButton(buttonTitle: "Button1", buttonColor: .blue)
                myButton(buttonTitle: "Button2", buttonColor: .green)
            } //버튼1과 버튼2를 담고있는 HStack
            Button {
                
            } label: {
                VStack{
                    Image(systemName: "arrowshape.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            
        }
    }
}

#Preview {
    Layout()
}
