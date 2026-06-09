package com.emranhss.GarmentsManagement.dto.response;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class DistrictResponseDto {

    private Long districtId;
    private String districtName;

    private Long divisionId;

    private String divisionName;

    private String countryName;
    private String countryCode;
    private Long CountryId;

}
