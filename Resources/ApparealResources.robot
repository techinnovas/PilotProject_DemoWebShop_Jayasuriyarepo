*** Settings ***
Documentation    A resource file with reusable keyword and variables
Library    SeleniumLibrary

*** Variables ***
${appereal}    css:a[href='/apparel-shoes']
${click}    xpath=//h2[@class='product-title']
${select_prod}    xpath=//div[@class='product-name']
${click_Z to A}    xpath=//h2[@class='product-title']
${check_pro}    css:div[class='product-name']
${price}    css:h2[class='product-title']
${pro_price}    css:div.product-price
${first_price}    xpath=//h2[@class='product-title']
${ass_price}    css:div[class='product-price']
${create}     xpath=//h2[@class='product-title']
${ass_create}    xpath=//div[@class='product-name']


*** Keywords ***
click the appereal A to z
    Click Link    ${appereal}
    Select From List By Label      id:products-orderby    Name: A to Z
    Select From List By Label     id:products-pagesize   4
    Select From List By Label      id:products-viewmode   Grid
    Click Element    ${click}
    Element Text Should Be    ${select_prod}    50's Rockabilly Polka Dot Top JR Plus Size

click the appereal z to A
    Click Link    ${appereal}
    Select From List By Label      id:products-orderby    Name: Z to A
    Select From List By Label     id:products-pagesize   4
    Select From List By Label      id:products-viewmode   Grid
    Click Element    ${click_Z to A}
    Element Text Should Be    ${check_pro}    Wool Hat

click the appereal low to high 
    Click Link    ${appereal}
    Select From List By Label      id:products-orderby    Price: Low to High
    Select From List By Label     id:products-pagesize   4
    Select From List By Label      id:products-viewmode   Grid
    Click Element    ${price}
    Element Text Should Be    ${pro_price}    1.00

click the appereal high to low 
    Click Link    ${appereal}
    Select From List By Label      id:products-orderby    Price: High to Low
    Select From List By Label     id:products-pagesize   4
    Select From List By Label      id:products-viewmode   List
    Click Element    ${first_price}
    Element Text Should Be    ${ass_price}    40.00

click the appereal created on
     Click Link    ${appereal}
    Select From List By Label      id:products-orderby     Created on
    Select From List By Label     id:products-pagesize   4
    Select From List By Label      id:products-viewmode   Grid
    Click Element    ${create}
    Log To Console    ${ass_create}
    Element Text Should Be    ${ass_create}    Green and blue Sneaker
    





    
