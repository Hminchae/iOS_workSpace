//
//  MyCar.swift
//  nakaliSample
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct MyCar: View {
    var myCar: KIA = KIA()
    var broCar: Hyundai = Hyundai()
    let cars: [Driveable] = [KIA(), Hyundai()]
    @State var speed: Int = 10
    var body: some View {
        VStack{
            Text("Speed: \(speed)")
            Button {
                let ran = cars.randomElement()
                print(ran?.speedDown(with: speed))
            } label: {
                Text("감속")
            }
        }
    }
}
struct KIA: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 0으로 자동 감속됩니다.")
        return speed - 5
    }
}

struct Hyundai: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 줄어듭니다....")
        return speed - 5
    }
}
protocol Driveable {
    func speedDown(with speed: Int) -> Int
}

#Preview {
    MyCar()
}
