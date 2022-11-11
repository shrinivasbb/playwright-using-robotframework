*** Settings ***
Library    Browser
Library    String
Library    Collections

*** Variables ***
${cmbFacility}    \#combo_facility
${chkApply}    \#chk_hospotal_readmission
${rdbMedicare}    \#radio_program_medicare
${rdbMedicaid}    \#radio_program_medicaid
${rdbNone}    \#radio_program_none
${dtVisitDate}    \#txt_visit_date
${txtComment}    \#txt_comment
${btnBookAppointment}    \#btn-book-appointment
${dtSwitch}    (//*[@class='datepicker-switch'])[1]
${dtSwitch1}    (//*[@class='datepicker-switch'])[2]

*** Keywords ***
Select Facility
    [Arguments]    ${facility}
    Select Options By    ${cmbFacility}    label    ${facility}

Check Hospital Re-Admission
    [Arguments]    ${re_admission}
    Run Keyword If    '${re_admission}'=='Yes'    Check Checkbox    ${chkApply}  

Select Health Program
    [Arguments]    ${health_program}
    Run Keyword If    '${health_program}'=='Medicare'    Check Checkbox    ${rdbMedicare}
    Run Keyword If    '${health_program}'=='Medicaid'    Check Checkbox    ${rdbMedicaid}  
    Run Keyword If    '${health_program}'=='None'    Check Checkbox    ${rdbNone} 

Enter Date
    [Arguments]    ${visit_date}
    ${splitted}    Split String    ${visit_date}    /
    ${months}    Create List    Jan    Feb    Mar    Apr    May    Jun    Jul    Aug    Sep    Oct    Nov    Dec
    Click    ${dtVisitDate}
    Click    ${dtSwitch}
    ${expdate}    Get Property   ${dtSwitch1}     innerText
    WHILE  ${expdate}>${splitted}[2]
        Click    .prev >>nth=1
        ${expdate}    Get Property   ${dtSwitch1}     innerText
    END
    WHILE  ${expdate}<${splitted}[2]
        Click    .next >>nth=1
        ${expdate}    Get Property   ${dtSwitch1}     innerText
    END
    ${val1}   Evaluate    ${splitted}[1]-1
    ${month}    Get From List    ${months}     ${val1}
    Click    //span[text()='${month}']
    Click    //td[text()='${splitted}[0]']
    
    

Enter Comment
    [Arguments]     ${comment}
    Click    ${txtComment}
    Fill Text    ${txtComment}    ${comment}

Click Book Appointment
    Click    ${btnBookAppointment}