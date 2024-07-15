'''
Resource page for Informationmodule
@Author- Jayasuriya P J(Expleo)
@Date-23/05/2024
'''
*** Settings ***
Documentation   Informationmodule Resource page contains keywords and variabes
Library    SeleniumLibrary

*** Variables ***
#variable stores locator 
${sitemap_l}    xpath://a[text()="Sitemap"]
${shipping_l}    xpath://a[text()="Shipping & Returns"]
${privacy_l}    xpath://a[text()="Privacy Notice"]
${condition_l}    xpath://a[text()="Conditions of Use"]
${about_l}    xpath://a[text()="About us"]
${contact_l}    xpath://a[text()="Contact us"]
${pagetitle}    xpath://div[@class="page-title"]/h1

*** Keywords ***
To click on sitemap option
    Click Link    ${sitemap_l}

To click on shipping option
    Click Link    ${shipping_l}

To click on privacy option
    Click Link    ${privacy_l}

#To click on condition option
To click on condition option
    Click Link    ${condition_l}

To click on about option
    Click Link    ${about_l}

To click on contact option
    Click Link    ${contact_l}

To verify sitepage
    Element Text Should Be   ${pagetitle}    Sitemap        

To verify shipping page
    Element Text Should Be    ${pagetitle}    Shipping & Returns 
    
To verify privacy page
    Element Text Should Be    ${pagetitle}    Privacy policy 

To verify condtion page
    Element Text Should Be    ${condition_l}    Conditions of Use

To verify contact page
    Page Should Contain Element    ${pagetitle}    Contact us

To verify about page
    Element Text Should Be   ${pagetitle}    About us     
    