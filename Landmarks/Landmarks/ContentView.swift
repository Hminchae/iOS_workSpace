//
//  ContentView.swift
//  Landmarks
//
//  Created by 황민채 on 2023/07/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Tutle Rock")
                    .font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
/* 각 텍스트 보기에서 하위 헤드라인 글꼴 수정자를 포함하는 HStack으로 이동하고 하위 헤드라인 텍스트에 보조 색상을 적용한다.*/
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here")
        
            }
            .padding()
            
            Spacer()
        }
    }
}
   
/*  conforms to the View protocol and describes the view's content and layout.*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*  second structure declares a preview for that view */
