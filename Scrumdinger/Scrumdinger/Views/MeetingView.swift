//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 황민채 on 11/8/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore) //하위 보기의 값을 의도적으로 무시했기때문에 HStack에 값을 추가해야 함.
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes") //추가하지 않으면 SwiftUI가 하위 보기의 값을 자동으로 추론하게 됨
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker") // 이걸 추가하지 않으면 VoiceOver는 forward.fill 이라고 읽을거임
            }
        }
        .padding()
        //padding(_:)에 매개변수를 생략하면 SwiftUI는 플랫폼과 프레젠테이션 컨텍스트에 적합한 기본값을 선택함
    }
}

#Preview {
    MeetingView()
} 
