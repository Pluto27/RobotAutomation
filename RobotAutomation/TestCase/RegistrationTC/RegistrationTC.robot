*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/Resource1.robot
Documentation    This testcase is to have registration functionality scenario
Test Setup    Start Browser and Maximize
Test Teardown    Close Browser Window
Suite Setup    Before each Test Suite
Suite Teardown    After each Test Suite
*** Variables ***

*** Test Cases ***
Robot First Test Case
    [Documentation]    This Testcase is to check the textbox input
    Input Text    name:fld_username    Priyanka
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    PriyankaCutie@beautiful.com

Robot Second Test Case
    [Documentation]    Click on Radio
    Select Radio Button    add_type    office