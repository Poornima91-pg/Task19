*** Settings ***
Documentation    Test login functionality on RobotSpareBin Industries.
Resource        D://Poornima//Ofc//Automation_class//Code//Robot_framework//Task19//keywords.robot

*** Test Cases ***
Verify Successful Login
    Open Browser To Login Page
    Login With Valid Credentials
    Verify Login Successful
    Logout Of Application