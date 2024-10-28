//
//  2-1.swift
//  Playground
//
//  Created by 유태호 on 9/26/24.
// 성적관리 시스템 제작




// 1. 학생 등록 - Dictionary
var students: [String: String] = [:]
students["001"] = "르탄이"
students["002"] = "배캠이"

// 2. 과목 관리 - Set
var subjects: [String: Set<String>] = [:]
subjects["르탄이"] = ["수학", "과학", "영어"]
subjects["배캠이"] = ["수학", "역사"]

// 과목 추가
subjects["르탄이"]?.insert("역사")

// 과목 삭제
subjects["배캠이"]?.remove("역사")

// 3. 성적 관리 - Array
var grades: [String: [String: [Int]]] = [:]
grades["르탄이"] = ["수학": [90, 85], "과학": [88], "영어": [70]]
grades["배캠이"] = ["수학": [75], "역사": [80]]

// 성적 추가
grades["르탄이"]?["수학"]?.append(95)

// 성적 삭제
grades["배캠이"]?["수학"]?.removeLast()

// 4. 성적 평균 계산 함수
func calculateAverage(for student: String, subject: String) -> Double? {
    guard let studentGrades = grades[student], let subjectGrades = studentGrades[subject] else {
        return nil
    }
    let total = subjectGrades.reduce(0, +)
    return Double(total) / Double(subjectGrades.count)
}

if let average = calculateAverage(for: "Alice", subject: "Math") {
    print("Alice's Math average: \(average)")
} else {
    print("No grades found for Alice in Math.")
}
