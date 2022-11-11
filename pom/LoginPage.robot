*** Settings ***
Library    Browser


*** Variables ***
${txtUsername}    \#txt-username    
${txtPassword}    \#txt-password
${btnLogin}       \#btn-login
${msgLoginFailed}    .text-danger


*** Keywords ***
Enter username and password
    [Arguments]    ${username}    ${password}
    Fill Text    ${txtUsername}    ${username}
    Fill Secret    ${txtPassword}    ${password}

Click Login button
    Click    ${btnLogin}    

Verify Login Error message    
    [Arguments]    ${error_msg}
    Take Screenshot    fullPage=True
    Get Property    ${msgLoginFailed}    innerText    ==    ${error_msg}