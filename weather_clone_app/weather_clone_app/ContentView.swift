//
//  ContentView.swift
//  weather_clone_app
//
//  Created by 황민채 on 2023/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("cloud")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                VStack{
                    Text("성남시")
                        .font(.title)
                    Text("13℃")
                        .font(.system(size: 80, weight: .thin))
                    Text("한때 흐림")
                        .font(.title3)
                    HStack{
                        Text("최고: 18℃")
                            .font(.title3)
                        Text("최저: 18℃")
                            .font(.title3)
                        
                    }
                }
                VStack{
                    Text("오전 12시쯤 청명한 상태가 예상됩니다.")
                    Divider()
                    ScrollView(.horizontal,showsIndicators: false){
                        VStack{
                            Text("지금")
                            Image(systemName:  "cloud.fill")
                            Text("13℃")
                        }
                    }
                    
                }
                VStack{
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
