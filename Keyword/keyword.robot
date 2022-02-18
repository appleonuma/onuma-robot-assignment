*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Variables/variables.robot    
Resource    ../Keyword/keyword.robot
Resource    ../Keyword/common.robot
Variables    ../Config/config.yaml

*** Keywords ***
input text and click for search
    Wait Until Element Is Visible    ${input_search_xpath}   
    Input Text    ${input_search_xpath}    ${input_search}
    Wait Until Element Is Visible    ${click_btn_search_xpath}   
    Click Element   ${click_btn_search_xpath} 

input for Search by Keyword 
    Log To Console                  ${search_key.s1}
    Wait Until Element Is Visible    ${input_search_xpath}   
    Input Text    ${input_search_xpath}    ${search_key.s1}
click search icon 
    Wait Until Element Is Visible    ${click_btn_search_xpath}   
    Click Element   ${click_btn_search_xpath} 


click add item
    Sleep   3s 
    Wait Until Page Contains Element   ${click_btn_add_xpath}  
    Click Element    ${click_btn_add_xpath}   

list name and code of product
    @{product_name_xpath}    Get WebElements    ${product_name_xpath} 
    @{product_code_xpath}    Get WebElements    ${product_code_xpath}
    ${index} =    Set Variable    ${0}

   FOR    ${item}     IN    @{product_name_xpath}
        ${product_name}       Get Text        ${item}
        Log To Console   ==========> ${product_name}
        ${product_code}       Get Text        ${product_code_xpath}[${index}]
        Log To Console   ==========> ${product_code}
        Exit For Loop If    ${index} == 4
        ${index}=    Set Variable    ${index + 1}
   END


