*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_004 Variables
        ${var1}=    set variable    HelloWorld
        log to console    ${var1}
        @{list1}    create list    Hello    22    yup    paneer    Pilla
        ${list_length}=    get length    ${list1}
        log to console     ${list_length}
        ${list_data}=    get from list    ${list1}    3
        log to console     ${list_data}
        : FOR    ${i}    IN    @{list1}
          \    log to console     ${i}
         ${key_var}=    set variable    log to console
          run keyword    ${key_var}    priyankasisodia
          ${var}=    set variable    No
          run keyword if    '${var}'=='Yes'     ${key_var}    Value Found
          run keyword if    '${var}'=='No'     ${key_var}     Value Not Found



*** Keywords ***
