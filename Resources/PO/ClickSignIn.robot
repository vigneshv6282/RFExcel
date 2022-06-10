*** Settings ***
Documentation    This is to click on sign in button
Library    SeleniumLibrary
Resource    ./Data/InputData.robot

*** Keywords ***
Click SignIn Button
    click element    class=header-signin
    wait until element is visible    id=email