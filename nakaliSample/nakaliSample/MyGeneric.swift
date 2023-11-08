//
//  MyGeneric.swift
//  nakaliSample
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct MyGeneric: View {
    @State var input = ""
    @State var mystack = MyStack<Int>()

    
    var body: some View {
        VStack {
            TextField("숫자를 입력해주세요", text: $input)
            Button {
                mystack.insertValue(input: Int(input) ?? 0)
            }label: {
                Text("저장")
            }
            Button {
                mystack.showData()
            } label: {
                Text("출력")
            }
        }.padding(40)
    }
}

struct MyStack<T> {
    var data: [T] = []
    
    mutating func insertValue(input: T) {
        data.append(input)
    }
    func showData() {
        data.forEach { item in
            print(item)
        }
    }
}

//struct MyFloatStack { --> 제네릭의 필요성
//    var data: [Float] = []
//    
//    mutating func insertValue(input: Float) {
//        data.append(input)
//    }
//    func showData() {
//        data.forEach { item in
//            print(item)
//        }
//    }
//}
#Preview {
    MyGeneric()
}
