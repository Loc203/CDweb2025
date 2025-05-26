package com.CDWeb.chickenShop.controllers;

import com.CDWeb.chickenShop.dtos.request.MemberRequest;
import com.CDWeb.chickenShop.entities.Member;
import com.CDWeb.chickenShop.services.MemberService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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