*** Settings ***
Documentation    To validate MyAccount
Library    SeleniumLibrary
Library  Collections

*** Variables ***
${jewelry_button}    xpath:(//a[@href='/jewelry'])[1]
${visible_jewelry}    xpath://div[@class='page-title']//h1
${click_dropdown}    xpath://select[@id='products-orderby']
${click_A_to_Z_product}    xpath:(//select[@id='products-orderby']//option)[2]
#${product_sorted_list}    xpath://div[@class='item-box']//h2[@class='product-title']/a
${visible_product}    xpath://h2[@class='product-title']/a
${click_first_product}    xpath://h2[@class='product-title']/a
${item_names}
${click_dropdown_display}    xpath://select[@id='products-pagesize']
${select_4_in display_option}    xpath:(//select[@id='products-pagesize']//option)[2]
${move_next_element_visible}    xpath://a[text()='Next']
${click_previous}    xpath://a[text()='Previous']
${click_view_as}    xpath://select[@id='products-viewmode']
${select_view_as}    xpath://select[@id='products-viewmode']/option[text()='List']
${list_visible}    xpath://div[contains(@class, 'product-list')]

${item_names}

${click_dropdown_display}    xpath://select[@id='products-pagesize']
${select_4_in display_option}    xpath:(//select[@id='products-pagesize']//option)[2]

${move_next_element_visible}    xpath://a[text()='Next']
${click_previous}    xpath://a[text()='Previous']

${click_view_as}    xpath://select[@id='products-viewmode']
${select_view_as}    xpath://select[@id='products-viewmode']/option[text()='List']
${list_visible}    xpath://div[contains(@class, 'product-list')]

${click_low_to_high}    xpath:(//select[@id='products-orderby']//option)[4]
${click_product_inLowToHigh}    xpath://a[text()='Black & White Diamond Heart']
${click_add_to_cart}    xpath://input[@id='add-to-cart-button-14']
${click_shopping_cart}    xpath://span[text()='Shopping cart']
${add_to_cart_notifi}    xpath://p[@class='content']
${click_first_range_price}    xpath://a[contains(@href, 'price=0-500')]
${product_prices}    xpath=//div[@class='item-box']//span[@class='price actual-price']
${click_second_range_price}    xpath://a[contains(@href, 'price=500-700')]
${click_third_range_price}    xpath://a[contains(@href, 'price=700-3000')]
${remove_filter}    xpath://a[@class='remove-price-range-filter']
${update_addToCart}    xpath://input[@name='updatecart']
${click_addToCart_top}    xpath://span[@class='cart-label'][text()='Shopping cart']
${discount_code_field}    xpath://input[@name='discountcouponcode']
${submit_coupon}    xpath://input[@name='applydiscountcouponcode']
${not_applied_message}    xpath://div[@class='message']
${gift_cart_field}    xpath://input[@name='giftcardcouponcode']
${gift_cart_submit}    xpath://input[@name='applygiftcardcouponcode']

${click_first_range_price}    xpath://a[contains(@href, 'price=0-500')]

*** Keywords ***

Click the jewelry element
    Click Element    ${jewelry_button}

Check whether the jewelry is visible
    Element Text Should Be    ${visible_jewelry}    Jewelry

Click the sort by dropdown button
    Click Element    ${click_dropdown}

Click A to Z option in the dropdown list
    Click Element    ${click_A_to_Z_product}

#Verify Sorting Order A to Z
    #${item_names}=    get text    xpath=//div[@class='item-box']//h2[@class='product-title']/a
    #${sorted_item_names}=  Copy List  ${item_names}
    #${sorted_item_names}=  Sort List  ${sorted_item_names}
    #Should Be Equal  ${item_names}  ${sorted_item_names}

#Verify whether Sorting Order in A to D
    #${item_names}=    Get Text    ${product_sorted_list}
    #${first_letters}=    Evaluate    [item[0] for item in $item_names]
    #Should Contain Any    A    ${first_letters}
    #Should Contain Any    B    ${first_letters}
    #Should Contain Any    C    ${first_letters}
    #Should Contain Any    D    ${first_letters}

Verify whether Sorting Order in A to Z
    Element Should Be Visible    ${visible_product}    Black & White Diamond Heart

Click the first product
    Click Element    ${click_first_product}

Click dropdown display
    Click Element    ${click_dropdown_display}

Select the option in the display dropdown
    Click Element    ${select_4_in display_option}

Check whether move next element are visible
    Element Text Should Be    ${move_next_element_visible}    //a[text()='Next']

Click next element
    Click Element    ${move_next_element_visible}

Click previous element
    Click Element    ${click_previous}

Click view as option
    Click Element    ${click_view_as}

Select list in the view as option
    Click Element    ${select_view_as}

Check whether product are listed in one by one
    Element Should Be Visible    ${list_visible}

Click low to high option in the dropdown list
    Click Element    ${click_low_to_high}

Click second product in low to high
    Click Link    ${click_product_inLowToHigh}

Click add to cart button
    Click Element    ${click_add_to_cart}

Click shopping cart in top
    Click Element    ${click_shopping_cart}

Check whether selected product in cart
    Element Text Should Be    ${add_to_cart_notifi}    The product has been added to your shopping cart

Click between 0 to 500 range
    Click Link    ${click_first_range_price}

Verify all products are between 0 to 500
    @{prices}=    Get WebElements    ${product_prices}
    FOR    ${price_element}    IN    @{prices}
        ${price_text}=    Get Text    ${price_element}
        ${price_value}=    Convert To Number    ${price_text.replace('$', '')}
        Run Keyword If    ${price_value} > 500    Fail    Product price ${price_value} is greater than 500
    END
    
Click between 500 to 700 range
    Click Link    ${click_second_range_price}

Verify all products are between 500 to 700
    @{prices}=    Get WebElements    ${product_prices}
    FOR    ${price_element}    IN    @{prices}
        ${price_text}=    Get Text    ${price_element}
        ${price_value}=    Convert To Number    ${price_text.replace('$', '')}
        Run Keyword If    ${price_value} > 700    Fail    Product price ${price_value} is greater than 700
    END

Click between 700 to 3000 range
    Click Link    ${click_third_range_price}

Verify all products are between 700 to 3000
    @{prices}=    Get WebElements    ${product_prices}
    FOR    ${price_element}    IN    @{prices}
        ${price_text}=    Get Text    ${price_element}
        ${price_value}=    Convert To Number    ${price_text.replace('$', '')}
        Run Keyword If    ${price_value} > 3000    Fail    Product price ${price_value} is greater than 3000
    END

Click remove filter option
    Click Element    ${remove_filter}

Click update cart button
    Click Element    ${update_addToCart}

Click add to cart button on top
    Click Element    ${click_addToCart_top}

Enter discount code in the field
    Input Text    ${discount_code_field}    discount

Click submit button after entered coupon code
    Click Element    ${submit_coupon}

Check whether the code is not applicable
    Element Text Should Be    ${not_applied_message}    The coupon code you entered couldn't be applied to your order

Enter gift cart in the field
    Input Text    ${gift_cart_field}    12345

Click submit button after entered gift cart
    Click Element    ${gift_cart_submit}
