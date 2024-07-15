*** Settings ***
Documentation    To validate reward points
Library    SeleniumLibrary
Test Setup    open the browser
Test Teardown    Close All Browsers
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/MyAccountResources.robot

*** Test Cases ***
Validate the Reward points 
    MyAccountResources.Fill login email
    MyAccountResources.Click account
    MyAccountResources.Click Reward points button
