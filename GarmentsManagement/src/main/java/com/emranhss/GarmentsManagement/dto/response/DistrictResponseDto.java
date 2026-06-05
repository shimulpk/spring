package com.emranhss.GarmentsManagement.dto.response;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class DistrictResponseDto {

    private Integer districtId;
    private String districtName;

    private Integer divisionId;

    private String divisionName;

    private String countryName;
    private String countryCode;
    private Integer CountryId;

}
