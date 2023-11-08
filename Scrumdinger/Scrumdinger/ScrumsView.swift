//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 황민채 on 11/8/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack{
            List(scrums/*, id: \.title*/) { scrum in // list는 컬렉션에서 개별 항목을 식별할 수 있는 방법이 필요함. 지금은 일단 제목으로 함
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums") // 자식뷰는 수정자를 통해서 스택 모양에 영향을 줄 수 있음
            .toolbar {
                Button(action: {}, label: {
                    Image(systemName: "plus")
                })
                .accessibilityLabel("새로운 Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
