*** Settings ***
Documentation    To validate order information
Library    SeleniumLibrary
Test Setup    open the browser
Test Teardown    Close All Browsers
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/MyAccountResources.robot

*** Variables ***

*** Test Cases ***
Validate the order
    MyAccountResources.Fill login email
    MyAccountResources.Click account
    MyAccountResources.Click order button
