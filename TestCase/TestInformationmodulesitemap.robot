'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case for sitemap page
Resource   ../Resources/Informationmoduleresource.robot
Resource    ../Resources/bookmoduleresource.robot
Resource    ../Resources/GenericResources.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session

*** Test Cases ***
Verifying for site map page
#Test case for sitemap page
    [Tags]    smoketest
    To assert the site map page
    
*** Keywords ***
To assert the site map page
#Keyword to click sitemap option
    
    Run Keyword And Ignore Error    Informationmoduleresource.To click on sitemap option

#Keyword to verify whether navigated to sitemap page
    Run Keyword And Ignore Error    Informationmoduleresource.To verify sitepage

#Keyword to click Book option in sitemap page
    Run Keyword And Ignore Error    bookmoduleresource.To click book option

#Keyword to verify navigates to book page from sitemap page
    Run Keyword And Ignore Error    bookmoduleresource.To click book option
    
    
    