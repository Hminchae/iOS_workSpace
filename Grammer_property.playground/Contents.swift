import UIKit

//저장 프로퍼티

struct Student {
    var name: String
    var age: Int
}

var thanky = Student(name: "minchae", age: 26)
print(thanky)

//연산 프로퍼티 : 실제 값을 저장하고 있는 것이 아니라 get/set 으로 값을 탐색하고 간접적으로 다른 프로퍼티의 값을 설정할 수 있다.
struct weeklySalary {
    var hourlyWage: Double
    var workinghours: Double
    var wage: Double{
        get{
            return hourlyWage * workinghours
        }
        set{
            workinghours = newValue / hourlyWage
        }
    }
}

var myweekSalary = weeklySalary(hourlyWage: 10000, workinghours: 4)
print(myweekSalary)
print(myweekSalary.wage)
myweekSalary.wage = 50000
print(myweekSalary.workinghours)

//프로퍼티 옵저버
struct Student2 {
    var name: String{
        willSet{
            print("\(name) -> \(newValue)로 변경예정입니다.")
        }
        didSet{
            print("\(oldValue) -> \(name)로 변경되었습니다.")
        }
    }
}

var thanky2 = Student2(name: "minchae")
thanky2.name = "thanky"


//타입 프로퍼티
struct SomeStruct{
    static var storedTypeProperty = "some Value"
    static var computedTypeProperty: Int{
        return 1
    }
}

SomeStruct.storedTypeProperty
SomeStruct.computedTypeProperty


print("\(SomeStruct.storedTypeProperty)")
print("\(SomeStruct.computedTypeProperty)")
