import UIKit

//Bool : 참 거짓을 표현하기 위한 타입
var isCheched: Bool = false
isCheched = true

//Int : 64bit 정수형 타입
var temperature: Int = -100
temperature = 40

//UInt(Unsigned Integer) : 64bit 정수형 타입
var cakes: UInt = 40
//(오류)cakes = -50

//Float : 32bit 부동소수형
var pi : Float = 3.14
pi = 31.4

//Double : 64bit 부동소수형
var pi2: Double = 3.14
pi2 = 31.4

//Character : 한 문자
var sampleCharacter: Character = "A"
sampleCharacter = "가"
//(오류)sampleCharacter ="가나다"

//String : 여러문자
var sampleString : String = "가나다"
sampleString = "안녕하세요"

//타입추론
var test = 100
type(of: test)

var testString = "타입추론"
type(of: testString)


//Any : 모든 타입 지칭 키워드
var sampleAny: Any = "any"
sampleAny = 100000
sampleAny = 3.14

//nil : 없음. 존재하지 않음을 나타내는 키워드
var sampleInt: Int? = nil
type(of: sampleInt)

var sampletest: String? = nil
type(of: sampletest)

