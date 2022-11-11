*** Settings ***
Library    Collections
Resource    ../pom/AppointmentConfirmation.robot


*** Keywords ***
Verify All On Appointment Confirmation Page
    [Arguments]    ${appointdetails}
    ${facility}    Get From Dictionary    ${appointdetails}    facility
    ${apply}    Get From Dictionary    ${appointdetails}    apply
    ${program}    Get From Dictionary    ${appointdetails}    healthprogram
    ${date}    Get From Dictionary    ${appointdetails}    visitdate
    ${comment}    Get From Dictionary    ${appointdetails}    comment
    AppointmentConfirmation.Verify Facility    ${facility}
    AppointmentConfirmation.Verify Re-admission    ${apply}
    AppointmentConfirmation.Verify Program    ${program}
    AppointmentConfirmation.Verify Visit Date    ${date}
    AppointmentConfirmation.Verify Comment    ${comment}