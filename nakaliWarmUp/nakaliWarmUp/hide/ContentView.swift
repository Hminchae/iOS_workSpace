//
//  ContentView.swift
//  nakaliWarmUp
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe.europe.africa.fill")
                .imageScale(.large)
                .foregroundStyle(.green)
                .animation(.smooth(), value: 3)
            Text("Hello")
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
