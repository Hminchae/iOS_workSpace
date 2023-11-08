//
//  myButton.swift
//  nakaliWarmUp
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct myButton: View {
    var buttonTitle: String
    var buttonColor: Color
    var body: some View {
        Button {
            
        } label: {
            Text(buttonTitle)
        }
        .padding()
        .background(buttonColor)
        .foregroundStyle(.white)
        .font(.headline)
        .clipShape(.buttonBorder)
    }
}

#Preview {
    myButton(buttonTitle: "에베베", buttonColor: .blue)
}
