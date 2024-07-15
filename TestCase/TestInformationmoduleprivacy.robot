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
Verifying for Privacy notice page
#Test case for privacy notice page
    [Tags]    smoketest
    To assert the Privacy notice page
    
*** Keywords ***
To assert the Privacy notice page
#keyword to click privacy notice option
    Run Keyword And Ignore Error    Informationmoduleresource.To click on privacy option
    
#keyword to check whether goes to privacy notice page or not
    Run Keyword And Ignore Error    Informationmoduleresource.To verify privacy page
