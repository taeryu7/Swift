//
//  Calculator.swift
//  
//
//  Created by 유태호 on 10/30/24.
//


class Calculator {
    
    //연산자 구별할 타입생성
    enum Operator {
        case add            //덧셈
        case subtraction    //뺄셈
        case multiplication //곱셈
        case division       //나눗셈
    }
    
    function calculate(_ a: Int, _ b: Int, _ operator: Operator) -> Int {
        switch operator {
        case .add:              //덧셈 case문
            return a + b        //입력한 a와 b의 덧셈값을 리턴
        case .subtraction:      //뺼셈 case문
            return a - b        //입력한 a와 b의 뺼셈값을 리턴
        case .multiplication:   //곱셈 case문
            return a * b        //입력한 a와 b의 곱셈값을 리턴
        case .division:         //나눗셈 case문
            
            // 분모에0이 입력되면 0을 리턴
            if b == 0 {
                return 0
            }
            return a / b        //입렵한 a와 b의 나눗셈값을 리턴
        }
    }
}

let calculator = Calculator()
print(calculator.calculate(10, 20, .add))

