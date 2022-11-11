*** Settings ***
Library    Browser

*** Variables ***
${facility_text}    p#facility
${re-admission_text}    p#hospital_readmission
${program_text}    p#program
${visitdate_text}    p#visit_date
${comment_text}    p#comment

*** Keywords ***
Verify Facility
    [Arguments]    ${facility}
    Get Property    ${facility_text}    innerText    ==    ${facility}

Verify Re-admission
    [Arguments]    ${readmission}
    Get Property    ${re-admission_text}    innerText    ==    ${readmission}

Verify Program
    [Arguments]    ${program}
    Get Property    ${program_text}    innerText    ==    ${program}

Verify Visit Date
    [Arguments]    ${visit_date}
    Get Property    ${visitdate_text}    innerText    ==    ${visit_date}

Verify Comment
    [Arguments]    ${comment}
    Get Property    ${comment_text}    innerText    ==    ${comment}