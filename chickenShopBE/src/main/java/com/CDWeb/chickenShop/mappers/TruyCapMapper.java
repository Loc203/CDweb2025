package com.CDWeb.chickenShop.mappers;

import com.CDWeb.chickenShop.dtos.response.TruyCapResponse;
import com.CDWeb.chickenShop.entities.TruyCap;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TruyCapMapper {
    TruyCapResponse toResponse(TruyCap truyCap);
}
