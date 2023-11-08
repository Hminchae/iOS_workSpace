//
//  OnBording.swift
//  nakaliWarmUp
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 33))
                .bold()
                .padding()
                HStack{
                    Image(systemName: "person.2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(.horizontal, 9)
                        .foregroundStyle(.blue)
                    VStack(alignment: .leading){
                        Text("Shared Library")
                            .font(.headline)
                            .bold()
                        Text("국회의원은 국가이익을 우선하여 양심에 따라 직무를 행한다. 모든 국민은 신체의 자유를 가진다.")
                            .foregroundStyle(.gray)
                            .font(.subheadline)
                    }
                }
                .padding(.trailing)
                HStack{
                    Image(systemName: "slider.horizontal.below.square.filled.and.square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(.horizontal, 9)
                        .foregroundStyle(.blue)
                    VStack(alignment: .leading){
                        Text("Copy & Paste Edits")
                            .font(.headline)
                            .bold()
                        Text("누구든지 법률에 의하지 아니하고는 체포·구속·압수·수색 또는 심문을 받지 아니하며")
                            .foregroundStyle(.gray)
                            .font(.subheadline)
                    }
                }.padding(.trailing)
                HStack{
                    Image(systemName: "doc.on.doc")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(.horizontal, 9)
                        .foregroundStyle(.blue)
                    VStack(alignment: .leading){
                        Text("Merge Duplicates")
                            .font(.headline)
                            .bold()
                        Text(" 법률과 적법한 절차에 의하지 아니하고는 처벌·보안처분 또는 강제노역을 받지 아니한다.")
                            .foregroundStyle(.gray)
                            .font(.subheadline)
                    }
                }.padding(.trailing)
        }.padding(.bottom, 200)
            .padding()
            Button {
                
            }label: {
                 Text("Continue")
                    .padding()
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.buttonBorder)
            }
            
    }
}

#Preview {
    Onboarding()
}
