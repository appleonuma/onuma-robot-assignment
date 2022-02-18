*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Variables/variables.robot    
Resource    ../Keyword/keyword.robot
Resource    ../Keyword/common.robot
Variables    ../Config/config.yaml
*** Keywords ***
#Open web
    #Open Browser    ${url}    ${browser}

Open Browser from Config 
    IF  "${select_environment}" == "production"
        Open Browser            ${production_url}    ${browser}
        Log To Console          URL == ${production_url}
    ELSE IF    "${select_environment}" == "dev"
        Open Browser            ${dev_url}    ${browser}
        Log To Console          URL == ${dev_url}
    ELSE IF   "${select_environment}" == "qa"
        Open Browser            ${qa_url}    ${browser}
        Log To Console          URL == ${qa_url}
    END


close pop-up
    Wait Until Element Is Visible   ${closer_pop_up_xpath}
    Click Element   ${closer_pop_up_xpath}

close web
    Close Browser


    