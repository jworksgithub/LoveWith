package com.jworks.lovewith.member.mapper;

import com.jworks.lovewith.member.vo.MemberVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	//회원가입
    int insertMember(MemberVO member);
    
}