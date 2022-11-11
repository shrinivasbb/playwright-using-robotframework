*** Settings ***
Library    Collections
Resource    ../pom/AppointmentPage.robot

*** Keywords ***
Make An Appointment
    [Arguments]    ${appointdetails}
    ${facility}    Get From Dictionary    ${appointdetails}    facility
    ${apply}    Get From Dictionary    ${appointdetails}    apply
    ${program}    Get From Dictionary    ${appointdetails}    healthprogram
    ${date}    Get From Dictionary    ${appointdetails}    visitdate
    ${comment}    Get From Dictionary    ${appointdetails}    comment
    AppointmentPage.Select Facility    ${facility}
    AppointmentPage.Check Hospital Re-Admission    ${apply}
    AppointmentPage.Select Health Program    ${program}
    AppointmentPage.Enter Date    ${date}
    AppointmentPage.Enter Comment    ${comment}
    Click Book Appointment
