'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case for sitemap page  to Verifying for Privacy Condition page
Library    SeleniumLibrary

Resource   ../Resources/Informationmoduleresource.robot
Resource    ../Resources/GenericResources.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session


*** Test Cases ***
#Test case for privacy condition page
Verifying for Privacy Condition page
    [Tags]    smoketest
    To assert the Privacy Condition page
    
*** Keywords ***
To assert the Privacy Condition page
    #keyword to click the privacy condtion page
    Run Keyword And Ignore Error    Informationmoduleresource.To click on condition option
    
    #keyword to check whether goes to conditionpage
    Run Keyword And Ignore Error    Informationmoduleresource.To verify condtion page
    