*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Variables/variables.robot    
Resource    ../Keyword/keyword.robot
Resource    ../Keyword/common.robot
variables    ../Config/config.yaml
*** Test Cases ***
1. Go to website 
    Open Browser from Config 
    close pop-up
2. input for search
    input for Search by Keyword 
    click search icon 
3. Print Product Name and code
    list name and code of product
4.close 
    close web