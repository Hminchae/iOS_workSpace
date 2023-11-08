//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 황민채 on 11/8/23.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
            //레이블의 이미지 및 레이블의 텍스트
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() } //static property를 만드는 확장자를 추가함, 이걸로 leading에 점찍는 구문을 사용할 수 있다 이말이야 ~
}
