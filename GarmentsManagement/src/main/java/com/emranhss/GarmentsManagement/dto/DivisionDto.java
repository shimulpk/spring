package com.emranhss.GarmentsManagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class DivisionDto {

    private Long divisionId;

    private String divisionName;

    private String countryName;
    private Long CountryId;

}
