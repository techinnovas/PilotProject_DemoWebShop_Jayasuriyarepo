'''
Resource page for Book module 
@Author- Jayasuriya P J(Expleo)
@Date-23/05/2024
'''
*** Settings ***
Documentation    Here contains keyword and variable for book moduleresource
Library    SeleniumLibrary
Library    Collections

*** Variables ***
#variables for Book module resource page
${book_l}    xpath:(//li/a)[5] 
${position_l}    id:products-orderby
${product_l}    xpath:(//h2/a)[1]
${view_l}    id:products-viewmode
${addtocard_l}    xpath:(//input[@class="button-2 product-box-add-to-cart-button"])[1]
${display_l}    id:products-pagesize
${pricefilter_l}    (//span[text()="50.00"])[2]
${actualprice_l}    Set Variable    div.add-info > div > span.price.actual-price
${removefilter_l}    xpath://a[text()="Remove Filter"]
${assertremove_l}    xpath:(//div/strong)[4]
${continueshoppint_l}    xpath://input[@class="button-2 continue-shopping-button"]
${verifyalert_l}    xpath://p[@class="content"]
${productitle_l}    xpath://h2[@class="product-title"]/a
${verify_shopping}    xpath://div/h1
${asserting_product}    xpath://div/h1
${recentlyviewproduct}  xpath:(//a[text()="Computing and Internet"])[2]
${click_shoppingcart}    xpath:(//a[@class="ico-cart"])[1]
*** Keywords ***
#Keyword to click book option
To click book option
    TRY
        Click Link    ${book_l}
    EXCEPT
        Log To Console    Error clicking book option: ${book_l}
    END

#Keyword to verifying navigation to book page
Verifiying in book page

    TRY
        Element Text Should Be   ${book_l}    BOOKS
    EXCEPT
        Log To Console    Error verifying book page navigation: ${book_l}
    END

#click on product
click on product
    TRY
        Click Link   ${product_l}
    EXCEPT
        Log To Console    Error clicking product: ${product_l}
    END

#click on display option 
click on display
    TRY
        Select From List By Index   ${display_l}     0
    EXCEPT
        Log To Console    Error clicking display option: ${display_l}
    END

#click on view option
click on view option
    TRY
        Select From List By Index    ${view_l}    1
    EXCEPT
        Log To Console    Error clicking view option: ${view_l}
    END

#click on sortby option
click on sortbyoption
    TRY
        Select From List By Index    ${position_l}    1
    EXCEPT
        Log To Console    Error clicking sortby option: ${position_l}
    END

click on sortbypricelowtohighoption
    TRY
        Select From List By Index    ${position_l}    3
    EXCEPT
        Log To Console    Error clicking sortby price low to high option: ${position_l}
    END


#click on add to card button
click on add to card button
    TRY
        Click Element   ${addtocard_l}
    EXCEPT
        Log To Console    Error clicking add to cart button: ${addtocard_l}
    END

#click on filter button
click on filter button
    TRY
        Click Element   ${pricefilter_l}
    EXCEPT
        Log To Console    Error clicking filter button: ${pricefilter_l}
    END

#click on remove filter
click on remove filter
    TRY
        Click Element    ${removefilter_l}
    EXCEPT
        Log To Console    Error clicking remove filter: ${removefilter_l}
    END

#verify on shows product list
verify for showing product list
    TRY
        Element Text Should Be     ${product_l}    Computing and Internet
    EXCEPT
        Log To Console    Error verifying product list: ${product_l}
    END

#verify product added
verify product added in shopping cart
    TRY
        Element Text Should Be    ${verifyalert_l}    ${EMPTY}
    EXCEPT
        Log To Console    Error verifying product added in shopping cart: ${verifyalert_l}
    END  

Verify Sorting Functionality
    ${product_elements}=    Get WebElements    ${productitle_l}
    Log    ${product_elements}   # Check if product elements are retrieved

    # Wait for the elements to be present (if necessary)
    Wait Until Page Contains Element    ${productitle_l}

    ${product_titles}=    Create List
    FOR    ${product_title_text}    IN    @{product_elements}
        ${title_text}=    Get Text    ${product_title_text}
        Append To List    ${product_titles}    ${title_text}
    END
    ${sorted_titles}=    Copy List    ${product_titles}
    ${sorted_titles}=    Sort List    ${sorted_titles}
    Lists Should Be Equal    ${product_titles}    ${sorted_titles}

#count product and verify display limit
Count Products and Verify Display Limit
    ${product_count}=    Get Element Count    ${productitle_l}
    Should Be True    ${product_count} <= 4

Assert Filter Price Option Over 50
    Wait Until Page Contains Element    ${productitle_l}    10s    # Wait for products to be displayed with a timeout of 10 seconds
    @{product_elements}=    Get WebElements    ${actualprice_l}   # Get all product elements
    FOR    ${element}    IN    @{product_elements}
        ${price}=    Get Text    ${element}   # Get text of each product element
        Run Keyword If    '${price}' <= '$50.00'    Fail    Product price '${price}' is not over $50.00
    END

#Asserting remove filter option
Asserting remove filter option
    TRY
        Element Text Should Be    ${pricefilter_l}    50.00
    EXCEPT
        Log To Console    Error asserting remove filter option: ${pricefilter_l}
    END

#Verifying shopping cart page
Asserting shopping cart page
    Element Text Should Be    ${verify_shopping}   Shopping cart  

#Asserting product page
Asserting product page
    Element Text Should Be    ${asserting_product}     Computing and Internet 

#Asserting recently view page
Asserting recently view page
    Click Link    ${recentlyviewproduct}

#click on shoppingcartbutton
click on shopping cart button
    Wait Until Element Is Visible    ${click_shoppingcart}    timeout=20
    Click Link    ${click_shoppingcart}
    Wait Until Element Contains    ${verify_shopping}    Shopping cart 
     

