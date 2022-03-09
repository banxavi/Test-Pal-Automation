*** Settings ***
Documentation     Template robot main suite.
Library    RPA.Browser.Selenium
Library    Dialogs

*** Variables ***
${URL} =    http://localhost:3000/

*** Keywords ***
Fill the form
    ${username}=    Convert To String    banxavi@gmail.com
    ${password}=    Convert To String    123456
    Input Text  //input[@id="username"]    ${username}
    Input Text  //input[@id="password"]    ${password}
Log In
    Click Button    //button[@id="click_login"]
    Submit Form    //button[@id="submit"]    

*** Tasks ***
Minimal task
    Open Available Browser    ${URL}    
    Sleep    10s
    Maximize Browser Window
    Fill the form
    Log In
    Pause Execution
