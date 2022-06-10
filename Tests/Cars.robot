*** Settings ***
Documentation    This is to write a common keyword to ececute the test case
Library    SeleniumLibrary
Resource    ./Data/InputData.robot
Resource    ../Resources/PO/OpenSite.robot
Resource    ../Resources/PO/ClickSignIn.robot
Resource    ../Resources/PO/EnterDetails.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/CarsKeywords.robot
Resource    ../Resources/DataManager.robot

Test Setup    Start Browser
Test Teardown    End Browser

*** Test Cases ***
This is to run the login test case as one test case
    ${LOGIN_SCENARIOS} =    DataManager.get csv data    ${FILEPATH}
    CarsKeywords.This is to run multiple login scenarios    ${LOGIN_SCENARIOS}