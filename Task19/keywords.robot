*** Settings ***
Library    SeleniumLibrary
Resource   D://Poornima//Ofc//Automation_class//Code//Robot_framework//Task19//config.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    id:username

Login With Valid Credentials
    Input Text    id:username    ${USERNAME}
    Input Text    id:password    ${PASSWORD}
    Click Button    xpath://button[text()='Log in']

Verify Login Successful
    Title Should be         RobotSpareBin Industries Inc. - Intranet
    Page Should Contain    maria
    Page Should Contain    RobotSpareBin Industries Inc.
    Page Should Contain    Home
    Wait Until Page Contains Element    xpath://div[@class='logout']    timeout=10s

Logout Of Application
    Click Button    xpath://button[text()='Log out']
    Close Browser