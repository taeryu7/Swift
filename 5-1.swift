//
//  5-1.swift
//  Playground
//
//  Created by 유태호 on 9/27/24.
//


/*
 ### 함수
 - 특정 작업을 수행하는 코드 덩어리
 - 기본적으로 함수 이름, 매개 변수 (Parameter), 리턴 타입 (Return Type) 등을 사용하여 정의하고 네이밍 컨벤션은 카멜 케이스를 사용합니다.
 */
func 함수_이름(아규먼트_레이블: 파라미터_타입) -> 리턴_타입 {
  // ... 코드
}

// 다양한 함수 표현법
func sayHi(friend: String) {
  print("Hi~~ \(friend)!")
}
sayHi(friend: "영호") // 출력값: Hi~~ 영호!


func sayHi(to friend: String) {
  print("Hi~! \(friend)!")
}
sayHi(to: "영호") // 출력값: Hi~! 영호!


func sayHi(_ friend: String) -> String {
  return ("Hi~ :) \(friend)!")
}
print(sayHi("영호")) // 출력값: Hi~ :) 영호!


/*
 ### 연산자
 - 산술 연산자: 덧셈, 뺄셈, 곱셈, 나눗셈, 나머지 연산한 결과값을 반환하는 연산자
 - 비교 연산자:  비교한 값을 true와 false로 반환하는 연산자
 - 논리 연산자: 논리적으로 비교한 값을 true와 false로 반환하는 연산자
 - 범위 연산자: 범위를 나타내는 연산자
 - 삼항 연산자: `question ? answer1 : answer2` 형식으로, question의 답이 true면 answer1을 false면 answer2 값을 사용하는 연산자.
 */

// 산술 연산자
var result = 1 + 2 // result는 3
result += 5 // result = result + 5와 같음. 따라서 result는 8
result = 10 - 6 // result는 4
result -= 3 // result = result - 3와 같음. 따라서 result는 1
result = 8 * 2 // result는 16
result = 12 / 5 // result는 2
result = 10 % 3 // result는 10을 3으로 나눈 후 나머지 이므로 1

// 비교 연산자
var result = (1 == 2) // result는 false
result = (1 != 2) // result는 true
result = (1 > 2) // result는 false
result = (1 < 2) // result는 true
result = (1 >= 2) // result는 false
result = (2 <= 2) // result는 true

// 논리 연산자
var allowedEntry = false
allowedEntry = !allowedEntry // allowedEntry는 true
let enteredDoorCode = true
let passedRetinaScan = false
let permittedAccess = enteredDoorCode && passedRetinaScan // permittedAccess는 false
let enter = allowedEntry || permittedAccess // enter는 true

// 범위 연산자
(1...5) // 1, 2, 3, 4, 5
(1..<5) // 1, 2, 3, 4
(3...) // 3, 4, 5, 6, 7 ...

// 삼항 연산자
let height = 150
var nickname = (height > 185) ? "Daddy Long Legs" : "TomTom" // nickname은 TomTom


// 문제풀이 운동관리 시스템 구축
// 1. 운동량 추가 함수
var totalExerciseTime = 0

func addExerciseTime(minutes: Int) {
    totalExerciseTime += minutes
    let message = totalExerciseTime >= 60 ? "운동을 많이 했습니다!" : "운동을 더 해보세요."
    print(message)
}

addExerciseTime(minutes: 40) // 출력: 운동을 더 해보세요.
addExerciseTime(minutes: 30) // 출력: 운동을 많이 했습니다!

// 2. 몸무게 비교 함수
let weightPersonA = 70
let weightPersonB = 75

func compareWeight(a: Int, b: Int) {
    if a > b {
        print("Person A가 더 무겁습니다.")
    } else if a < b {
        print("Person B가 더 무겁습니다.")
    } else {
        print("두 사람의 몸무게는 같습니다.")
    }
}

compareWeight(a: weightPersonA, b: weightPersonB) // 출력: Person B가 더 무겁습니다.

// 3. 운동 가능 여부 함수
let temperature = 36.2
let stamina = 75

func canExercise(temp: Double, stamina: Int) {
    if temp <= 36.5 && stamina >= 70 {
        print("운동 가능합니다.")
    } else {
        print("운동 불가능합니다.")
    }
}

canExercise(temp: temperature, stamina: stamina) // 출력: 운동 가능합니다.

// 4. 범위 연산자 활용
let exerciseCount = 7

if (1...10).contains(exerciseCount) {
    print("운동 횟수가 유효합니다.")
} else {
    print("운동 횟수가 유효하지 않습니다.")
}

// 5. 삼항 연산자 활용
let exerciseTime = 25
let exerciseStatus = (exerciseTime >= 30) ? "적당히 운동했습니다." : "운동이 부족합니다."
print(exerciseStatus) // 출력: 운동이 부족합니다.
