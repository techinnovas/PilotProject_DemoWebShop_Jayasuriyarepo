*** Settings ***
Documentation    To validate Profile information
Library    SeleniumLibrary
Test Setup        open the browser
Task Teardown       close browser session
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/JewelryResources.robot


*** Test Cases ***
Validate the jewelry functionality
    [Documentation]    This test case will validate the sort by functionality
    [Tags]    smoke
    JewelryResources.Click the jewelry element
    JewelryResources.Check whether the jewelry is visible
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Verify whether Sorting Order in A to Z
    JewelryResources.Click the first product

Validate the jewelry functionality without filtering
    [Documentation]    This test case will validate that without sort by product
    [Tags]    regression
    JewelryResources.Click the jewelry element
    JewelryResources.Check whether the jewelry is visible
    JewelryResources.Click the first product

Validate the jewelry functionality with filtering all product
    [Documentation]    This test case will validate that product
    [Tags]    regression
    JewelryResources.Click the jewelry element
    JewelryResources.Check whether the jewelry is visible
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Verify whether Sorting Order in A to Z
    JewelryResources.Click dropdown display
    JewelryResources.Select the option in the display dropdown
    JewelryResources.Click view as option
    JewelryResources.Select list in the view as option
    JewelryResources.Check whether product are listed in one by one

Validate the jewelry with add to cart
    [Documentation]    This test case will validate that product with add to cart
    [Tags]    smoke
    JewelryResources.Click the jewelry element
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click low to high option in the dropdown list
    JewelryResources.Click second product in low to high
    JewelryResources.Click add to cart button
    JewelryResources.Check whether selected product in cart

Validate the price with range
    [Documentation]    This test case will validate the price
    [Tags]    regression
    JewelryResources.Click the jewelry element
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click low to high option in the dropdown list
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Click between 0 to 500 range
    