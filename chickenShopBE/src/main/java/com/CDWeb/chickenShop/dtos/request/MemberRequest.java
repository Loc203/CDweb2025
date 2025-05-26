package com.CDWeb.chickenShop.dtos.request;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MemberRequest {
    String email;
    String password;
    String fullName;
    String birthDate;
    String gender;
    String education;
    String city;
    String district;
    String ward;
    String phone;
}
