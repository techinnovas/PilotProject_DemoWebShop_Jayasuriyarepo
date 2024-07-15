'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:24/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule to sortby 
Resource    ../Resources/GenericResources.robot
Resource   ../Resources/bookmoduleresource.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session
*** Test Cases ***
To verify sorting functionality 
#Test cases for  Bookmodule
    [Tags]    Regressiontest
    To verify sorting by selecting "A-Z" option
    
*** Keywords ***
#Keyword to click position
To verify sorting by selecting "A-Z" option
    bookmoduleresource.To click book option
    bookmoduleresource.click on sortbyoption
