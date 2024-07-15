'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:24/05/2024
'''
*** Settings ***
Resource    ../Resources/GenericResources.robot
Resource   ../Resources/bookmoduleresource.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session


*** Test Cases ***
To verify for removing filter price option 
    [Tags]    Regressiontest
    To verify remove filter option

*** Keywords ***
To verify remove filter option
#keyword for clicking book
    bookmoduleresource.To click book option
    
#keyword for clicking price filter
    bookmoduleresource.click on filter button

#keyword for clicking remove filter button
    bookmoduleresource.click on remove filter

#keyword to check filter option has removed
    bookmoduleresource.Asserting remove filter option
