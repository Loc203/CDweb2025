package com.CDWeb.chickenShop.controller;

import com.CDWeb.chickenShop.dto.request.MemberRequest;
import com.CDWeb.chickenShop.entity.Member;
import com.CDWeb.chickenShop.service.service.MemberService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@Slf4j
@RequestMapping("/members")
public class MemberController {
    @Autowired
    MemberService memberService;

    @PostMapping("/register")
    public ResponseEntity<?> registerMember(@RequestBody MemberRequest request) {
        memberService.createMember(request);
        return ResponseEntity.ok().build();
    }

    @GetMapping
    public List<Member> getAllMembers(@RequestParam(required = false) String gender) {
        List<Member> members = memberService.getAllMembers();

        if (gender != null && !gender.isEmpty()) {
            return memberService.getAllMembersByFilter(gender);
        }
        return members;
    }

    @GetMapping("/{email}")
    public Member getMember(@PathVariable String email) {
        return memberService.findMemberByEmail(email);
    }

    @GetMapping("/check-email")
    public boolean checkEmail(@RequestParam String email) {
        return memberService.checkEmail(email);
    }
}