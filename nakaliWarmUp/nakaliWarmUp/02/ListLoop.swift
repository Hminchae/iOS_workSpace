//
//  ListLoop.swift
//  nakaliWarmUp
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct ListLoop: View {
    let data: [String] = ["Apple", "Banana", "Cherry", "watermellon"]
    var body: some View {
        NavigationStack{
            List(data, id: \.self) { item in
                HStack {
                    Text(item)
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListLoop()
}
