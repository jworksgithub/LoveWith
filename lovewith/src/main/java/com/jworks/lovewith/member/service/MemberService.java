package com.jworks.lovewith.member.service;

import com.jworks.lovewith.member.mapper.MemberMapper;
import com.jworks.lovewith.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Transactional
    public boolean registerMember(MemberVO member) {
        int result = memberMapper.insertMember(member);
        return result > 0;
    }
}

