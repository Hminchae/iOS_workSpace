import UIKit

/* 1번
if 주어진 조건식{
실행할 구문
}
*/
var isChecked = true
if isChecked {
    print("체크되어 있습니다.")
}

/* 2번
if 주어진 조건식{
}else{
그 외의 경우 실행할 구문
}
*/
var isChecked2 : Bool = false
if isChecked2 {
    print("체크되어 있습니다.")
}else{
    print("체크되어 있지 않습니다.")
}

/* 3번
if 주어진 조건식{
}else if 다른 조건식{
실행할 구문
}else{
}
*/
var time = 10
if time == 9{
    print("아침식사 시간입니다.")
}else if time == 12{
    print("점심식사 시간입니다.")
}else if time == 19{
    print("저녁식사 시간입니다.")
}else{
    print("자유시간입니다.")
}

/* 4번
switch 입력변수{
case 입력값1:
    입력변수가 입력값1과 일치할 때 실행
case 입력값2:
case 입력값3:
default:
    어떤 입력값과 일치하지 않을때 실행
}
*/
let testcolor = "black"
//강의에서는 color Literal을 사용했으나 xcode13 이상에서는 더이상 지원을 안 한다고 함.
switch testcolor{
case "white":
    print("흰색")
case "blue":
    print("파란색")
default:
    print("색 없음")
}

/* 5번
guard 조건 else{
    조건문에 맞지 않을 때 실행
    return
}
조건이 성립되면 실행
*/
func getName(name: String?) -> String{
    guard let uName = name else{
        return " 이름값이 존재하지 않습니다."
    }
    return uName
}

getName(name: "황민채")
getName(name: nil)
