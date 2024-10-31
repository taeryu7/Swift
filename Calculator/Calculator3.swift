//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Calculator {
    // 인스턴스 담을 프로퍼티 선언
    var addOperation: AddOperation              // 덧셈
    var subtractOperation: SubtractOperation    // 뺼셈
    var multiplyOperation: MultiplyOperation    // 곱셈
    var divideOperation: DivideOperation        // 나눗셈
    
    // 프로퍼티 초기화
    init(addOperation: AddOperation, subtractOperation: SubtractOperation, multiplyOperation: MultiplyOperation, divideOperation: DivideOperation) {
        self.addOperation = AddOperation()
        self.subtractOperation = SubtractOperation()
        self.multiplyOperation = MultiplyOperation()
        self.divideOperation = DivideOperation()
    }
    
}

// 각 연산의 클래스 생성
class AddOperation {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
}

class SubtractOperation {
    func subtract(a: Int, b: Int) -> Int {
        return a - b
    }
}

class MultiplyOperation {
    func multiply(a: Int, b: Int) -> Int {
        return a * b
    }
}

class DivideOperation {
    func divide(a: Int, b: Int) -> Int {
        return a / b
    }
}

// 각 연산의 인스턴스 생성
let addOperation = AddOperation()
let subtractOperation = SubtractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()

//자동완성의 위험함에 빠졌었음. addOperation: addOperation 로 가야되는데 addOperation: AddOperation로 자동완성이 되어버리니 실행에서 오류가 발생했었었음. 자동완성 하기전에 한번 맞는지 확인을 해보자
let calculator = Calculator.init(addOperation: addOperation, subtractOperation: subtractOperation, multiplyOperation: multiplyOperation, divideOperation: divideOperation)

// 연산(임의의 값 10, 3 각각 부여)
// 이녀석도 마찬가지, 자동완성에서 뒤에 .연산함수명이 안붇은걸 그냥 돌려서 실행시 오류발생
calculator.addOperation.add(a: 10, b: 3)
calculator.subtractOperation.subtract(a: 10, b: 3)
calculator.multiplyOperation.multiply(a: 10, b: 3)
calculator.divideOperation.divide(a: 10, b: 3)

// 이렇게 코드가 싹 자동으로 완성되는 IDE는 처음인데 편한줄 알았는데 생각보다 함정카드가 매우 많음
// 결론 : 자동완성을 너무 맹신하지 말자, 쓰더라도 이게 맞는지, 맞게 들어간건지 확인하고 사용할것

//: [Next](@next)
