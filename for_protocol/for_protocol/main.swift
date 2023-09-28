//
//  main.swift
//  for_protocol
//
//  Created by 황민채 on 2023/09/28.
//

import Foundation


protocol AProtocol{
    var a: String{ get set }
    // AProtocol에 정의된 a는 읽기와 쓰기 모두를 요구했고
    var b: String{ get }
    // b는 읽기만 가능하다면 어떻게 구현되어도 상관 없다는 요구사항임
}

protocol BProtocol{
    // 타입 프로퍼티를 요구하려면 static 키워드를 사용함.
    // 클래스의 타입 프로퍼티에는 상속 가능한 타입 프로퍼티인 class 타입 프로퍼티와
    // 상속 불가능한 static 타입 프로퍼티가 있으나!
    // 이 두 타입 프로퍼티를 따로 구분하지 않고 static 키워드를 사용하여 프로퍼티를 요구하면 됨
    static var c: Int { get set }
    static var d: Int { get }
    // c, d 모두 타입 프로퍼티 요구하는 중
}
//protocol Talkable {
//    var topic: String { get set }
//    // 이 프로토콜은 어떤 주제에 말할 수 있게 하는 프로퍼티인 topic 을 요구함
//}
//struct person: Talkable {
//    var topic: String
//    // 그래서 위 프로토콜을 채택하여 준수하는 Person 클래스는 topic 프로퍼티를 가져야함
//}


//protocol Talkable {
//    var topic: String { get set }
//    func talk(to: person)
//    //프로토콜이 요구할 메서드는 프로토콜 정의에서 작성,
//    //다만 실제 구현부인 중괄호({}) 부분은 제외하고 메서드의 이름, 매개변수, 반환 타입 등만 작성함
//    //그리고 매개변수 기본값을 지정할 수 없음
//    //static 키워드를 사용하여 요구한 타입 메서드를 클래스에서 실제 구현할 대에는 static 키워드나
//    //class 키워드 어느 쪽을 사용해도 무방함
//}
//
//struct person: Talkable {
//    func talk(to: person) {
//        print("\(topic)에 대히 \(to.name)에게 이야기합니다.")
//    }//
//
//    var topic: String
//    var name: String
//}


//protocol Talkable {
//    var topic: String { get set }
//    func talk(to: Person)
//    init(name: String, topic: String)// 정의는 하지만 구현은 X, 매개변수만
//}
//struct Person: Talkable {
//    var topic: String
//    var name: String
//
//    func talk(to: Person){
//        print("\(topic)에 대해 \(to.name)에게 이야기합니다.")
//    }
//    init(name: String, topic: String) {
//        self.name = name
//        self.topic = topic
//    }
//}
//
//let cat: Person = Person(name: "고양이", topic: "집사")
//let sister: Person = Person(name: "언니", topic: "가족")
//
//cat.talk(to: sister)// -> 집사에 대해 언니에게 이야기합니다.


