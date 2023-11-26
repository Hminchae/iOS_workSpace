//
//  MusicApp.swift
//  ViewPractice
//
//  Created by 황민채 on 11/26/23.
//

import SwiftUI

struct MusicApp: View {
    var body: some View {
        @State var someThing: String = ""
        let columns: [GridItem] = Array(repeating: .init(.adaptive(minimum: 200)), count: 2)
        let images = ["1", "2", "3", "4", "5", "6", "7", "8"]// "9", "10", "11", "12", "13", "14"]
        

        TabView {
                        ContentView2()
                            .tabItem {
                                Image(systemName: "play.circle.fill")
                                    Text("지금듣기")
                            }
                        ContentView2()
                            .tabItem {
                                Image(systemName: "rectangle.grid.2x2.fill")
                                    Text("둘러보기")
                            }
                        ContentView2()
                            .tabItem {
                                Image(systemName: "dot.radiowaves.left.and.right")
                                    Text("라디오")
                            }
                        ContentView2()
                            .tabItem {
                                Image(systemName: "music.note.house")
                                    Text("보관함")
                            }
            ZStack {
                Color(.black).ignoresSafeArea()
                
                VStack(spacing: 10) {
                    
                    HStack {
                        Text("검색")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Spacer()
                        
                        Image("프사")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45)
                            .clipShape(Circle())
                    }
                    
                    HStack {
                        TextField("아티스트, 노래, 가사 등", text: $someThing)
                            .textFieldStyle(.roundedBorder)
                            .opacity(0.4)
                    }
                    
                    HStack{
                        Text("카테고리 둘러보기")
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    ScrollView {
                        
                        LazyVGrid(columns: columns) {
                            ForEach(images, id: \.self) {
                                Image($0)
                                    .resizable()
                                    .frame(width: 175, height: 130)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                                
                            }
                        }
                        
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                            Image("1")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .cornerRadius(5)
                            Text("좋은날")
                            Spacer()
                            Image(systemName:"play.fill")
                                .font(.title2)
                            Image(systemName:"forward.fill")
                                .font(.title2)
                    }
                    .padding(9)
                    .background(Color.gray)
                    .opacity(0.9)
                    .foregroundStyle(Color.white)
                    .cornerRadius(7)
//                    .frame(width: 200)
                    
                    
                    
                }
                .padding()
            }
            .foregroundStyle(Color.white)
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("검색")
            }
            .accentColor(.red)
        }
    }
}

#Preview {
    MusicApp()
}
