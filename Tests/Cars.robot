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



#This is to run the login test cases for cars website with user1
#    [Arguments]    ${CREDENTIALS}
#    open cars website
#    clicking on signin button
#    enter credentials    ${NEW_USER}
#    sleep    5s
#
#This is to run the login test cases for cars website with user2
#    [Arguments]    ${CREDENTIALS}
#    open cars website
#    clicking on signin button
#    enter credentials    ${EXISTING_USER}
#    sleep    5s
#
#This is to run the login test cases for cars website with user3
#    [Arguments]    ${CREDENTIALS}
#    open cars website
#    clicking on signin button
#    enter credentials    ${BLANK_USER}
#    sleep    5s