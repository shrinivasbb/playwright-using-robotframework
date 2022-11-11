*** Settings ***
Resource    ../pom/StartUpPage.robot
Resource    ../pom/LoginPage.robot

*** Keywords ***

Go to Login Page
     StartUpPage.Navigate to Login Page
Perform valid Login
    [Arguments]    ${username}    ${password}
    StartUpPage.Navigate to Login Page
    LoginPage.Enter username and password    ${username}    ${password}
    LoginPage.Click Login button

Verify Login Failed    
    [Arguments]    ${error_msg}
    LoginPage.Verify Login Error message    ${error_msg}