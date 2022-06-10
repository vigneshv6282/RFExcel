*** Settings ***
Documentation    This is to enter credentials
Library    SeleniumLibrary
Resource    ./Data/InputData.robot

*** Keywords ***
Enter Login Details
    [Arguments]    ${CREDENTIALS}
    run keyword unless    '${CREDENTIALS[0]}' == 'blank'    input text    id=email    ${CREDENTIALS[0]}
    run keyword unless    '${CREDENTIALS[1]}' == 'blank'    input text    id=password    ${CREDENTIALS[1]}