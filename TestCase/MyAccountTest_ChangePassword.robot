*** Settings ***
Documentation    To validate change password functionality
Library    SeleniumLibrary
Test Setup    open the browser
Test Teardown    Close All Browsers
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/MyAccountResources.robot


*** Test Cases ***
Validate the change password
    MyAccountResources.Fill login email
    MyAccountResources.Click account
    MyAccountResources.Click change password button
    MyAccountResources.Enter old password in the old password field
    MyAccountResources.Enter new password in the new password field
    MyAccountResources.Enter confirm password in the confirm password field
    MyAccountResources.Click change password button
    
