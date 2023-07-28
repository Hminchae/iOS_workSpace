import UIKit

var name: String = "minchae"
var age: Int = 27

name
name = "thanky"

age
age = 26

let one: Int = 1
let two: Int = 2
 
/*
 함수 : 어떤 작업을 수행하는 코드의 집합
 */

func sayHello(name: String) ->String{
    return "nice to meet you, \(name)"
}

sayHello(name: "minchae")

func introduce(name: String, age: Int)-> String{
    return "Hi my name is \(name),and \(age) years old."
}

introduce(name: name, age: age)

/*
 four arithmetic operations
 */

func add(a: Int, b: Int)-> Int{
    return a+b
}

func subtract(a: Int, b: Int)-> Int{
    return a-b
}
func multiply(a: Int, b: Int)-> Int{
    return a*b
}
func divide(a: Int, b: Int)-> Int{
    return a/b
}


add(a: 6, b: 7)
subtract(a: 4, b: 6)
multiply(a: 5, b: 4)
divide(a: 2, b: 2)
