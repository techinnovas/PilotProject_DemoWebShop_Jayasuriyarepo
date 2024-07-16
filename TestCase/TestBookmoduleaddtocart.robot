'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:24/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule to click product and select add to cart option
Resource    ../Resources/GenericResources.robot
Resource   ../Resources/bookmoduleresource.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session

*** Test Cases ***
#Test case to click product and select add to cart option
To click product and select add to cart option
    [Tags]    retest
    To click on book option
    To verify shows book details
    To select add to cart

*** Keywords ***
#Keyword to click on book
To click on book option
    bookmoduleresource.To click book option

#Keyword to verify book page
To verify shows book details
    bookmoduleresource.Verifiying in book page

#Keyword to click on product
To click on product
    bookmoduleresource.click on product

#Keyword to select all to cart button
To select add to cart
    bookmoduleresource.click on add to card button

