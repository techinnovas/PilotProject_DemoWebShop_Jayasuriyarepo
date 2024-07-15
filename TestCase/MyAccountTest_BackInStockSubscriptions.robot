*** Settings ***
Documentation    To validate back in stock subscriptions
Library    SeleniumLibrary
Test Setup    open the browser
Test Teardown    Close All Browsers
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/MyAccountResources.robot

*** Test Cases ***
Validate the back in stock subscriptions
    MyAccountResources.Fill login email
    MyAccountResources.Click account
    MyAccountResources.Click the back in stock subscriptions button
  
