*** Settings ***
Documentation     Test the link available in the page
Library    SeleniumLibrary
Resource    ../Resources/ContactResources.robot
Resource    ../Resources/GenericResources.robot
Test Setup    open the browser
Test Teardown    close browser session

*** Test Cases ***
Click the facebook link
    [Tags]    smoke
    ContactResources.click for the facebook
    Switch Window     new   
    sleep     10s 
    ContactResources.verify the facebook page is open

Click the twitter link
    ContactResources.click for the twitter
    Switch Window    new
    sleep     10s 
    ContactResources.verify the twitter page is open

Click the Rss link
    ContactResources.click for the rss

Click the youtube link
    ContactResources.click for the youtube
    Switch Window    new
    sleep     10s 
    ContactResources.verify the youtube page is open

Click the google link
    ContactResources.click for the google
    Switch Window    new

