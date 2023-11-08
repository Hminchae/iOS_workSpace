//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 황민채 on 11/8/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData) //루트 뷰로 ScrumView를 설정. 앱의 본체 속성은 앱의 기본 사용자 인터페이스를 나타내는 뷰 계층 구조를 포함하는 Scene을 반환함 -> 먼말인지 모르겠음
        }
    }
}
