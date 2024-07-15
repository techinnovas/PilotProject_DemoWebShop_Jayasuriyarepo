'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:24/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule for selecting price filter "over 50.00" option
Resource    ../Resources/GenericResources.robot
Resource   ../Resources/bookmoduleresource.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session

*** Test Cases ***
To verify for selecting price filter "over 50.00" option
    [Tags]    Regression test
    To verify for select price filter "over 50.00" option

*** Keywords ***    
To verify for select price filter "over 50.00" option
# Keyword for selecting book option
    bookmoduleresource.To click book option

#keyword for selecting filter
    bookmoduleresource.click on filter button
    bookmoduleresource.Assert Filter Price Option Over 50