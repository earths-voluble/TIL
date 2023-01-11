//
//  MemberListManager.swift
//  MemberListClone
//
//  Created by 이보한 on 2023/01/07.
//

import Foundation

final class MemberListManager {
    
    // 멤버리스트를 저장하기 위한 배열
    private var membersList: [Member] = []
    
    // 전체 멤버 리스트 만들기
    func makeMembersListDatas() {
        membersList = [
        Member(name: "홍길동", age: 20, phone: "01058348388", address: "한양"),
        Member(name: "임꺽정", age: 30, phone: "01012312345", address: "합천"),
        Member(name: "유키", age: 13, phone: "01021342444", address: "서울")
        ]
    }
    
    // 전체 멤버 리스트 얻기
    func getMembersList() -> [Member] {
        return membersList
    }
    
    // 새로운 멤버 만들기
    func makeNewMember(_ member: Member) {
        membersList.append(member)
    }
    
    // 기존의 멤버 정보 업데이트
    func updateMemberInfo(index: Int, _ member: Member) {
        membersList[index] = member
    }
    
    // 특정 멤버 얻기 서브스크립트
    subscript(index: Int) -> Member {
        get {
            return membersList[index]
        }
    }
}
