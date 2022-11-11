*** Settings ***
Library    Browser
Resource    ../library/LoginPage.robot

*** Variables ***
${BROWSER}    chromium
${URL}    https://katalon-demo-cura.herokuapp.com/
${USERNAME}    John Doe
${PASSWORD}    ThisIsNotAPassword

*** Keywords ***
Open Browser and Login
    New Persistent Context    url=${URL}    browser=${BROWSER}    headless=False    viewport={'width':1920, 'height':1080}
    LoginPage.Perform valid Login    ${USERNAME}    ${PASSWORD}

Open Browser for Login
    New Persistent Context    url=${URL}    browser=${BROWSER}    headless=False    viewport={'width':1920, 'height':1080}
    LoginPage.Go to Login Page

Close Current Browser
    Close Browser    CURRENT