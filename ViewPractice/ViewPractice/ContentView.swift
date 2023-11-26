//
//  ContentView.swift
//  ViewPractice
//
//  Created by 황민채 on 11/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "heart")
                }
            ContentView2()
                .tabItem {
                    Image(systemName: "heart")
                }
            ContentView3()
                .tabItem {
                    Image(systemName: "heart")
                }
            ContentView4()
                .tabItem {
                    Image(systemName: "heart")
                }
            MusicApp()
                .tabItem {
                    Image(systemName: "heart")
                }
        }
    }
}

#Preview {
    ContentView()
}
