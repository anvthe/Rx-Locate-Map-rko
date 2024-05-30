package com.rko.springsecurity.dto;



public interface DivisionFileProjection {
    
    String divisionName();
    
    String drugName();
    
    Long prescriptionCount();


    String getDivisionName();

    String getDrugName();

    Long getPrescriptionCount();

}
