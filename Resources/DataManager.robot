*** Settings ***
Documentation    This is used to read the data from external file
Library    SeleniumLibrary
Library    ../CustomLib/Custom.py

*** Keywords ***
get csv data
    [Arguments]    ${FILEPATH}
    ${DATA} =    read csv file    ${FILEPATH}
    [Return]    ${DATA}