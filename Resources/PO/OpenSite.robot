*** Settings ***
Documentation    This is to open cars website
Library    SeleniumLibrary
Resource    ./Data/InputData.robot

*** Keywords ***
Open Website
    go to    ${URL}
    wait until element is visible    id=by-make