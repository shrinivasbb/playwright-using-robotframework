*** Settings ***
Library    json
Resource    ../commons/Commons.robot
Resource    ../library/AppointmentPage.robot
Resource    ../library/AppointmentConfirmation.robot
Resource    ../library/LoginPage.robot
Test Setup    Commons.Open Browser and Login
Test Teardown    Commons.Close Current Browser
Library    ../commons/datareader.py

*** Test Cases ***
Book An Appointment and verify values
    ${appointmentdata}    datareader.Read Json Data    appointment.json    appointment
    AppointmentPage.Make An Appointment   ${appointmentdata}
    AppointmentConfirmation.Verify All On Appointment Confirmation Page    ${appointmentdata}