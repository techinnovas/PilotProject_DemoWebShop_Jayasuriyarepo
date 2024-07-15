'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case to click shipping and return page
Resource   ../Resources/Informationmoduleresource.robot
Resource    ../Resources/GenericResources.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session


*** Test Cases ***
Verifying for shipping and return page
#Test case for shipping page
    [Tags]    smoketest
    To assert the shipping and return page
    
*** Keywords ***
To assert the shipping and return page
#keyword to click shipping page
    
    Run Keyword And Ignore Error    Informationmoduleresource.To click on shipping option
    
#keyword to check whether shipping page has navigated
    Run Keyword And Ignore Error    Informationmoduleresource.To verify shipping page
