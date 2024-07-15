'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case for sitemap page
Library    SeleniumLibrary
Resource   ../Resources/Informationmoduleresource.robot
Resource    ../Resources/GenericResources.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session


*** Test Cases ***
#Test case for contact us page
Verifying for contact us page
    [Tags]    smoketest
    To assert the contact us page
    
*** Keywords ***
To assert the contact us page
    #keyword to click the contact us page
    Run Keyword And Ignore Error    Informationmoduleresource.To click on condition option
    
    #keyword to check whether goes to appropriate page
    Run Keyword And Ignore Error    Informationmoduleresource.To verify condtion page