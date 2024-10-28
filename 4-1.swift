//
//  4-1.swift
//  Playground
//
//  Created by 유태호 on 9/26/24.
//

/*
 - `didSet`: 프로퍼티를 관찰(observe)하면서 새 값이 저장된 직후에 호출되며 이전 프로퍼티의 값을 oldValue로 제공됩니다.
 - `willSet`: 프로퍼티를 관찰하면서 값이 새 값이 저장되기 직전에 호출되며 새로운 프로퍼티의 값을 newValue로 제공합니다.
 */

var myProperty: Int = 20{
   didSet(oldValue){
      print(oldValue)
   }
   willSet(newValue){
      print(newValue)
   }
}

var name: String = "Unknown" {
    willSet {
        print("현재 이름 = \(name), 바뀔 이름 = \(newValue)")
    }
    didSet {
        print("현재 이름 = \(name), 바뀌기 전 이름 = \(oldValue)")
    }
}
 
name = "Peter"
// willSet이 먼저 실행
// 현재 이름 = Unknown, 바뀔 이름 = Peter
// 현재 이름 = Peter, 바뀌기 전 이름 = Unknown

/*
 ### 접근 제한자
 - 다른 소스 파일이나 모듈의 코드에서 코드 일부에 대한 접근을 제한하는 키워드
 - [제약이 적음] `open` < `public` < `internal` < `fileprivate` < `private` [제약이 많음]
 - `private(set)`으로 프로퍼티를 외부에서 수정 불가능한 읽기 전용 모드를 만들 수 있습니다.
 - 접근 제한자를 작성하지 않으면 기본적으로  `internal`로 판단합니다.
 - 상위 요소보다 하위 요소가 더 높은 접근 수준을 가질 수 없습니다.
 */


// 문제풀이 은행계좌 관리시스템 구축
// 전역 변수로 잔액 관리
var balance: Double = 0.0

// 잔액을 변경할 때마다 직접 출력
balance = 1000.0
print("잔액이 \(balance)원으로 변경되었습니다.")

balance -= 500.0
print("잔액이 \(balance)원으로 변경되었습니다.")

balance -= 600.0

// 음수 잔액 방지
if balance < 0 {
    print("🚨 경고: 잔액은 음수가 될 수 없습니다. 잔액을 0원으로 설정합니다.")
    balance = 0.0
}

print("최종 잔액: \(balance)원")
