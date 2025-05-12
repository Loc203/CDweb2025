package com.CDWeb.chickenShop.service.service;

import com.CDWeb.chickenShop.dto.request.MemberRequest;
import com.CDWeb.chickenShop.entity.Member;
import com.CDWeb.chickenShop.repository.MemberRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class MemberService {
    MemberRepository memberRepository;

    public Member createMember(MemberRequest request) {
        Member member = new Member();

        member.setEmail(request.getEmail());
        member.setPassword(request.getPassword());
        member.setFullName(request.getFullName());
        member.setBirthDate(request.getBirthDate());
        member.setGender(request.getGender());
        member.setEducation(request.getEducation());
        member.setAddress(request.getWard() + ", " + request.getDistrict() + ", " + request.getCity());
        member.setPhone(request.getPhone());

        return memberRepository.save(member);
    }

    public List<Member> getAllMembers() {
        return memberRepository.findAll();
    }

    public List<Member> getAllMembersByFilter(String gender) {
        List<Member> members = getAllMembers();
        if (gender != null && !gender.isEmpty()) {
            return members.stream()
                    .filter(m -> gender.equals(m.getGender()))
                    .collect(Collectors.toList());
        }
        return members;
    }

    public Member findMemberByEmail(String email) {
        List<Member> members = getAllMembers();
        for (Member member : members) {
            if (member.getEmail().equals(email))
                return member;
        }
        return null;
    }

    public boolean checkEmail(String email) {
        return memberRepository.existsByEmail(email);
    }
}
