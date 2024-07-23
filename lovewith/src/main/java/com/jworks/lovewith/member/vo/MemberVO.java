package com.jworks.lovewith.member.vo;

import java.sql.Timestamp;

public class MemberVO {
    private String email;
    private String password;
    private String role;
    private String name;
    private String nickname;
    private String mfCode;
    private String cellNo;
    private Timestamp joinDate;
    private Timestamp updateDate;

    // 기본 생성자
    public MemberVO() {}

    // 모든 필드를 매개변수로 받는 생성자
    public MemberVO(String email, String password, String role, String name, String nickname, String mfCode, String cellNo, Timestamp joinDate, Timestamp updateDate) {
        this.email = email;
        this.password = password;
        this.role = role;
        this.name = name;
        this.nickname = nickname;
        this.mfCode = mfCode;
        this.cellNo = cellNo;
        this.joinDate = joinDate;
        this.updateDate = updateDate;
    }

    // Getter와 Setter 메서드
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getMfCode() {
        return mfCode;
    }

    public void setMfCode(String mfCode) {
        this.mfCode = mfCode;
    }

    public String getCellNo() {
        return cellNo;
    }

    public void setCellNo(String cellNo) {
        this.cellNo = cellNo;
    }

    public Timestamp getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Timestamp joinDate) {
        this.joinDate = joinDate;
    }

    public Timestamp getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Timestamp updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "MemberVO{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                ", name='" + name + '\'' +
                ", nickname='" + nickname + '\'' +
                ", mfCode='" + mfCode + '\'' +
                ", cellNo='" + cellNo + '\'' +
                ", joinDate=" + joinDate +
                ", updateDate=" + updateDate +
                '}';
    }
	
}
