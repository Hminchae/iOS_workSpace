//
//  Sample.swift
//  nakaliSample
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct Sample: View {
    
    let data = [
        Destination(direction: .north,
                    food: "파스타맛집",
                    image: Image(systemName: "carrot")),
        Destination(direction: .east,
                    food: "한신포차",
                    image: Image(systemName: "sunrise")),
        Destination(direction: .west,
                    food: "순대국맛집",
                    image: Image(systemName: "balloon")),
        Destination(direction: .east,
                    food: "김밥천국",
                    image: Image(systemName: "cursor.rays")),
    ]
    
    @State var selectedDestination: Destination?
    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            if let destination = selectedDestination {
                Text(destination.direction.rawValue)
                if let food = destination.food {
                    Text(food)
                }
            }
            Button{
                selectedDestination = data.randomElement()
            } label: {
                Text("돌려요!")
            }
        }
    }
}

struct Destination {
    let direction: Direction
    let food: String? //있을수도 ~ 없을수도
    let image: Image
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}
#Preview {
    Sample()
}
