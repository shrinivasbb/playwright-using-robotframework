*** Settings ***
Library    Browser

*** Variables ***
${mnuToggle}    \#menu-toggle
${itemLogin}    text=Login

*** Keywords ***
Navigate to Login Page
    Click    selector=${mnuToggle}
    Click    selector=${itemLogin}
