package com.CDWeb.chickenShop.dtos.response;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class TruyCapResponse {
    Long maTC;
    String tinhTrang;
}
