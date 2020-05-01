*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/Resource1.robot
Resource    ../resources/Resource1.robot
*** Variables ***

*** Test Cases ***
TC_16
    Start Browser and Maximize
    Input Text    name:fld_username    Priyanka
*** Keywords ***