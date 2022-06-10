*** Settings ***
Documentation    This is to trigger the browser and close the browser
Library    SeleniumLibrary
Resource    ../Data/InputData.robot

*** Keywords ***
Start Browser
    open browser    about:blank    ${BROWSER}
End Browser
    close all browsers
