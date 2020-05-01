*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/


*** Test Cases ***
TC_002 Radio Button
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds
    Select Radio Button    add_type    office
    Select Checkbox     name:terms
    Click Link    xpath://a[text()='Read Detail']
    Select From List By Index    name:sex    2
    Select From List By Value    name:sex    1
    Select From List By Label    name:sex    Female

*** Keywords ***
