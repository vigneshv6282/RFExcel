*** Settings ***
Documentation    This is to write a common keyword to ececute the test case
Library    SeleniumLibrary
Resource    ./Data/InputData.robot
Resource    ../Resources/PO/OpenSite.robot
Resource    ../Resources/PO/ClickSignIn.robot
Resource    ../Resources/PO/EnterDetails.robot
Resource    ../Resources/Common.robot

*** Keywords ***
This is to run multiple login scenarios
    [Arguments]    ${LOGIN_SCENARIOS}
    FOR    ${i}    IN    @{LOGIN_SCENARIOS}
        Open Cars Website
        Clicking on SignIn button
        Enter Credentials    ${i}
    END

Open Cars Website
    opensite.open website
Clicking on SignIn button
    clicksignin.click signin button
Enter Credentials
    [Arguments]    ${CREDENTIALS}
    enterdetails.enter login details    ${CREDENTIALS}