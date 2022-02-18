*** Variables ***
${url}    https://www.makroclick.com/th
${url_api}    http://125.26.15.143:8082
${browser}    chrome

#config
${select_environment}    ${config['select_environment']}
#url
${production_url}    ${config['environment']['production']}
${dev_url}    ${config['environment']['dev']}
${qa_url}    ${config['environment']['qa']}
#Dictionary
&{search_key}    s1=กระทะ    s2=หม้อ    s3=ไมโครเวฟ
# click close pop-up
${closer_pop_up_xpath}    xpath=//div[@class="modal hide fade show"]//a[@data-dismiss="modal"]
#search page
${input_search_xpath}    xpath=//div[@class="search-input"]//input[@type="text" and @placeholder="ค้นหาสินค้า, หมวดหมู่, รหัสสินค้า"]
${input_search}    เนื้อหมู
#search result by keyword
${product_name_xpath}    xpath=//div[contains(@class, "ProductCard__TitleMaxLines-sc-")]
${product_code_xpath}    xpath=//div[contains(@class, "ProductCard__TextCode-sc-")]

#icon search
${click_btn_search_xpath}    xpath=//div[@class="background-darkRed d-flex align-items-center h-100 click" and @role="button"]

#add item
${btn_add_xpath1}    xpath=//div[@class="pl-2"]//div[@class="Button__ButtonView-yda6mi-0 hTbbqM d-flex justify-content-center click "]
${click_btn_add_xpath}    xpath=//div[@id="scrollPaginatorTop"]/div[@class="pt-2 col-12"]/div[1]/div[1]//div[@class="d-none d-lg-block"]//button[@id="plus" and @type="button"]
