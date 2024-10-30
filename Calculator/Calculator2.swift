//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Calculator {
    
    //연산자 구별할 타입생성
    enum Operator {
        case add            //덧셈
        case subtraction    //뺄셈
        case multiplication //곱셈
        case division       //나눗셈
        case remain         //나머지셈
    }
    
    func calculate(op: Operator, a: Int, b: Int) -> Int {
        switch op {
        case .add:              // 덧셈 case문
            return a + b        // 입력한 a와 b의 덧셈값을 리턴
        case .subtraction:      // 뺼셈 case문
            return a - b        // 입력한 a와 b의 뺼셈값을 리턴
        case .multiplication:   // 곱셈 case문
            return a * b        // 입력한 a와 b의 곱셈값을 리턴
        case .division:         // 나눗셈 case문
            // 분모에0이 입력되면 0을 리턴
            if b == 0 {
                return 0
            }
            return a / b        // 입렵한 a와 b의 나눗셈값을 리턴
        
        
        case .remain:
            return a % b
        }

    }
}

// calculator 인스턴스 생성
let calculator = Calculator()

// 연산(임의의 값 10, 3 각각 부여)
let addResult = calculator.calculate(op: .add, a: 10, b: 3)
let subResult = calculator.calculate(op: .subtraction, a: 10, b: 3)
let mulResult = calculator.calculate(op: .multiplication, a: 10, b: 3)
let divResult = calculator.calculate(op: .division, a: 10, b: 3)
let remainResult = calculator.calculate(op: .remain, a: 10, b: 3)

