//
//  3-1.swift
//  Playground
//
//  Created by 유태호 on 9/26/24.
//직사각형의 넓이와 둘레를 계산

// 1. 저장 프로퍼티
var width: Double = 10.0
var height: Double = 5.0

// 2. 연산 프로퍼티: 넓이
var extent: Double {
    return width * height
}

// 2. 연산 프로퍼티: 둘레
var circumference: Double {
    return 2 * (width + height)
}

// 3. 결과 출력
print("넓이: \(extent)")        // 출력값: 넓이: 50.0
print("둘레: \(circumference)")   // 출력값: 둘레: 30.0
