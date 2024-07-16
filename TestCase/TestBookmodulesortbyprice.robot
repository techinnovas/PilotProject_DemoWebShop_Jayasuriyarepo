'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:26/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule to verify sort the product by price
Resource    ../Resources/GenericResources.robot
Resource   ../Resources/bookmoduleresource.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session

*** Test Cases ***
To verify sort the product by price
    [Tags]    Regressiontest
    To sort the product by low to high price option

*** Keywords ***
To sort the product by low to high price option
    #To click book option
    bookmoduleresource.To click book option
    bookmoduleresource.click on sortbypricelowtohighoption
    