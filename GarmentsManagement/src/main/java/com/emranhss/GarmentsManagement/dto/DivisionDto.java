package com.emranhss.GarmentsManagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class DivisionDto {

    private Integer divisionId;

    private String divisionName;

    private String countryName;
    private Integer CountryId;

}
