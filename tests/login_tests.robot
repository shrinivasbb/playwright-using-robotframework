*** Settings ***
Resource    ../library/LoginPage.robot
Resource    ../commons/Commons.robot
Test Setup    Commons.Open Browser for Login
Test Teardown    Commons.Close Current Browser

*** Test Cases ***
Negative scenario login
    LoginPage.Enter username and password    johndoe    98378917382738273827382
    LoginPage.Click Login button
    LoginPage.Verify Login Failed    Login failed! Please ensure the username and password are valid.