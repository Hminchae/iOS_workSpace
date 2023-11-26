import UIKit

class UserProfile {
    var id: String?
    var password: String?
    var name: String?
}

// A viewController
let minchaeProfile = UserProfile()
minchaeProfile.password = "123456"



// 이런식으로 각 viewController 에 UserProfile 객체를 만들어서 저장하면 각 Instance의 프로퍼티에만 저장됨
// 한 Instance에 모든 정보가 저장되게 하여야함 ..
// 해당 클래스에 대한 Instance 는 최초 생성될 때 한번만 생성해서 전역에 두고
// 그 이후에는 이 Instance만 접근 가능하게 하자 -> 싱글톤 패턴


// 일단 이런식으로 만들어둠
class UserProfile2 {
    static let shared = UserProfile2()
    var id: String?
    var password: String?
    var name: String?
    
    private init() {} // init 함수 접근제어자를 private로 지정해둠 -> 왜냐면 혹시라도 init 을 호출해서 instance를 또 생성하는것을 막기위해서임
}


//이제 이 클래스에 어떻게 접근하냐

let minchaeProfile2 = UserProfile2.shared // 위에서 shared로 생성해두었던 static 프로퍼티로 접근하면 하나의 Instance를 공유하는것
minchaeProfile2.id = "akjdhfk"
minchaeProfile2.password = "akjdhfk"
minchaeProfile2.name = "akjdhfk"

let c: Double = Double(readLine()!)!
let a: Double = Double(readLine()!)!

print("\((a * 2 * 3.141592) + (c * 2))")
